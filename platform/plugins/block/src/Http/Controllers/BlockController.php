<?php

namespace Botble\Block\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Supports\Breadcrumb;
use Botble\Block\Forms\BlockForm;
use Botble\Block\Http\Requests\BlockRequest;
use Botble\Block\Models\Block;
use Botble\Block\Tables\BlockTable;
use Illuminate\Support\Facades\Auth;

class BlockController extends BaseController
{
    protected function breadcrumb(): Breadcrumb
    {
        return parent::breadcrumb()
            ->add(trans('plugins/block::block.menu'), route('block.index'));
    }

    public function index(BlockTable $dataTable)
    {
        $this->pageTitle(trans('plugins/block::block.menu'));

        return $dataTable->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/block::block.create'));

        return BlockForm::create()->renderForm();
    }

    public function store(BlockRequest $request)
    {
        $form = BlockForm::create();

        $form
            ->saving(function (BlockForm $form) use ($request) {
                $form
                    ->getModel()
                    ->fill([...$request->input(), 'user_id' => Auth::guard()->id()])
                    ->save();
            });

        return $this
            ->httpResponse()
            ->setPreviousRoute('block.index')
            ->setNextRoute('block.edit', $form->getModel()->getKey())
            ->withCreatedSuccessMessage();
    }

    public function edit(Block $block)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $block->name]));

        return BlockForm::createFromModel($block)->renderForm();
    }

    public function update(Block $block, BlockRequest $request)
    {
        BlockForm::createFromModel($block)->setRequest($request)->save();

        return $this
            ->httpResponse()
            ->setPreviousRoute('block.index')
            ->withUpdatedSuccessMessage();
    }

    public function destroy(Block $block)
    {
        return DeleteResourceAction::make($block);
    }
}
