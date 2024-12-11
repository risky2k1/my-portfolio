<?php

namespace Botble\Member\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Supports\Breadcrumb;
use Botble\Media\Models\MediaFile;
use Botble\Member\Forms\MemberForm;
use Botble\Member\Http\Requests\MemberCreateRequest;
use Botble\Member\Http\Requests\MemberEditRequest;
use Botble\Member\Models\Member;
use Botble\Member\Tables\MemberTable;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;

class MemberController extends BaseController
{
    protected function breadcrumb(): Breadcrumb
    {
        return parent::breadcrumb()
            ->add(trans('plugins/member::member.menu_name'), route('member.index'));
    }

    public function index(MemberTable $dataTable)
    {
        $this->pageTitle(trans('plugins/member::member.menu_name'));

        return $dataTable->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/member::member.create'));

        return MemberForm::create()
            ->remove('is_change_password')
            ->renderForm();
    }

    public function store(MemberCreateRequest $request)
    {
        $form = MemberForm::create();
        $form
            ->saving(function (MemberForm $form) use ($request) {
                $member = $form->getModel();
                $member->fill($request->input());
                $member->confirmed_at = Carbon::now();
                $member->password = Hash::make($request->input('password'));

                if (
                    ($avatarInput = $request->input('avatar_image')) &&
                    $image = MediaFile::query()->where('url', $avatarInput)->first()
                ) {
                    $member->avatar_id = $image->getKey();
                }

                $member->save();
            });

        return $this
            ->httpResponse()
            ->setPreviousRoute('member.index')
            ->setNextRoute('member.edit', $form->getModel()->getKey())
            ->withCreatedSuccessMessage();
    }

    public function edit(Member $member)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $member->name]));

        $member->password = null;

        return MemberForm::createFromModel($member)
            ->renderForm();
    }

    public function update(Member $member, MemberEditRequest $request)
    {
        MemberForm::createFromModel($member)
            ->saving(function (MemberForm $form) use ($request) {
                $member = $form->getModel();
                $member->fill($request->except('password'));

                if ($request->input('is_change_password') == 1) {
                    $member->password = Hash::make($request->input('password'));
                }

                if (
                    ($avatarInput = $request->input('avatar_image')) &&
                    $image = MediaFile::query()->where('url', $avatarInput)->first()
                ) {
                    $member->avatar_id = $image->getKey();
                }

                $member->save();
            });

        return $this
            ->httpResponse()
            ->setPreviousRoute('member.index')
            ->withUpdatedSuccessMessage();
    }

    public function destroy(Member $member)
    {
        return DeleteResourceAction::make($member);
    }
}
