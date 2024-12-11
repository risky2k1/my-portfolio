<?php

namespace Botble\CustomField\Http\Controllers;

use Botble\Base\Facades\Assets;
use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Supports\Breadcrumb;
use Botble\CustomField\Actions\CreateCustomFieldAction;
use Botble\CustomField\Actions\ExportCustomFieldsAction;
use Botble\CustomField\Actions\ImportCustomFieldsAction;
use Botble\CustomField\Actions\UpdateCustomFieldAction;
use Botble\CustomField\Facades\CustomField;
use Botble\CustomField\Forms\CustomFieldForm;
use Botble\CustomField\Http\Requests\CreateFieldGroupRequest;
use Botble\CustomField\Http\Requests\UpdateFieldGroupRequest;
use Botble\CustomField\Models\FieldGroup;
use Botble\CustomField\Tables\CustomFieldTable;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class CustomFieldController extends BaseController
{
    protected function breadcrumb(): Breadcrumb
    {
        return parent::breadcrumb()
            ->add(trans('plugins/custom-field::base.page_title'), route('custom-fields.index'));
    }

    public function index(CustomFieldTable $dataTable)
    {
        $this->pageTitle(trans('plugins/custom-field::base.page_title'));

        Assets::addScriptsDirectly('vendor/core/plugins/custom-field/js/import-field-group.js')
            ->addScripts(['blockui']);

        return $dataTable->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/custom-field::base.form.create_field_group'));

        $this->registerAssets();

        return CustomFieldForm::create()->renderForm();
    }

    public function store(CreateFieldGroupRequest $request, CreateCustomFieldAction $action)
    {
        $result = $action->run($request->input());

        $response = $this->httpResponse()->withCreatedSuccessMessage();

        if ($result['error']) {
            $response->setError()->setMessage(
                Arr::first($result['messages'])
            );
        }

        return $response
            ->setPreviousRoute('custom-fields.index')
            ->setNextRoute('custom-fields.edit', $result['data']['id']);
    }

    public function edit(FieldGroup $customField)
    {
        $this->registerAssets();

        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $customField->title]));

        $customField->rules_template = CustomField::renderRules();

        return CustomFieldForm::createFromModel($customField)->renderForm();
    }

    public function update(FieldGroup $customField, UpdateFieldGroupRequest $request, UpdateCustomFieldAction $action)
    {
        $result = $action->run($customField, $request->input());

        $response = $this->httpResponse();
        $response->withUpdatedSuccessMessage();

        if ($result['error']) {
            $response->setError()->setMessage(
                Arr::first($result['messages'])
            );
        }

        return $response
            ->setPreviousRoute('custom-fields.index');
    }

    public function destroy(FieldGroup $customField)
    {
        return DeleteResourceAction::make($customField);
    }

    public function getExport(ExportCustomFieldsAction $action, $id = null)
    {
        $ids = [];

        if (! $id) {
            foreach (FieldGroup::query()->get() as $item) {
                $ids[] = $item->id;
            }
        } else {
            $ids[] = $id;
        }

        $json = $action->run($ids)['data'];

        return response()->json($json, 200, [
            'Content-type' => 'application/json',
            'Content-Disposition' => 'attachment; filename="export-field-group.json"',
        ], JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
    }

    public function postImport(ImportCustomFieldsAction $action, Request $request)
    {
        $json = (array) $request->input('json_data', []);

        return $action->run($json);
    }

    protected function registerAssets(): void
    {
        Assets::getFacadeRoot()
            ->addStylesDirectly([
                'vendor/core/plugins/custom-field/css/custom-field.css',
                'vendor/core/plugins/custom-field/css/edit-field-group.css',
            ])
            ->addScriptsDirectly('vendor/core/plugins/custom-field/js/edit-field-group.js')
            ->addScripts(['jquery-ui']);
    }
}
