<?php

namespace Botble\Member\Http\Controllers\Settings;

use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Member\Forms\Settings\MemberSettingForm;
use Botble\Member\Http\Requests\Settings\MemberSettingRequest;
use Botble\Setting\Http\Controllers\SettingController;

class MemberSettingController extends SettingController
{
    public function edit()
    {
        $this->pageTitle(trans('plugins/member::settings.title'));

        return MemberSettingForm::create()->renderForm();
    }

    public function update(MemberSettingRequest $request): BaseHttpResponse
    {
        return $this->performUpdate($request->validated());
    }
}
