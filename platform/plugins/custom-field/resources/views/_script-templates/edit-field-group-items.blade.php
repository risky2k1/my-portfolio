<x-core::custom-template id="_options-repeater_template">
    <div class="line row border-bottom py-3" data-option="repeater">
        <div class="col-3">
            <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.repeater_fields')) !!}</x-core::form.label>
        </div>
        <div class="col-9">
            <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.repeater_fields')) !!}</x-core::form.label>
            <div class="add-new-field">
                <ul class="row list-group field-table-header clearfix">
                    <li class="col-4 list-group-item w-bold">{{ trans('plugins/custom-field::base.form.field_label') }}</li>
                    <li class="col-4 list-group-item w-bold">{{ trans('plugins/custom-field::base.form.field_name') }}</li>
                    <li class="col-4 list-group-item w-bold">{{ trans('plugins/custom-field::base.form.field_type') }}</li>
                </ul>
                <ul class="sortable-wrapper edit-field-group-items field-group-items"></ul>

                <div class="text-end">
                    <a class="btn btn-info btn-add-field" href="#">{{ trans('plugins/custom-field::base.form.add_field') }}</a>
                </div>
            </div>
        </div>
    </div>
</x-core::custom-template>
<x-core::custom-template id="_options-defaultvalue_template">
    <div class="line row border-bottom py-3" data-option="defaultvalue">
        <div class="col-3">
            <x-core::form.label class="mb-0">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.default_value')) !!}</x-core::form.label>
            <div class="form-control-plaintext">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.default_value_helper')) !!}</div>
        </div>
        <div class="col-9">
            <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.default_value')) !!}</x-core::form.label>
            <input type="text" class="form-control" placeholder="" value="">
        </div>
    </div>
</x-core::custom-template>

<x-core::custom-template id="_options-placeholdertext_template">
    <div class="line row py-3" data-option="placeholdertext">
        <div class="col-3">
            <x-core::form.label class="mb-0">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.placeholder')) !!}</x-core::form.label>
            <div class="form-control-plaintext">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.placeholder_helper')) !!}</div>
        </div>
        <div class="col-9">
            <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.placeholder')) !!}</x-core::form.label>
            <input type="text" class="form-control" placeholder="" value="">
        </div>
    </div>
</x-core::custom-template>

<x-core::custom-template id="_options-defaultvaluetextarea_template">
    <div class="line row border-bottom py-3" data-option="defaultvaluetextarea">
        <div class="col-3">
            <x-core::form.label class="mb-0">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.default_value')) !!}</x-core::form.label>
            <div class="form-control-plaintext">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.default_value_helper')) !!}</div>
        </div>
        <div class="col-9">
            <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.default_value')) !!}</x-core::form.label>
            <textarea class="form-control" rows="5"></textarea>
        </div>
    </div>
</x-core::custom-template>

<x-core::custom-template id="_options-rows_template">
    <div class="line row border-bottom py-3" data-option="rows">
        <div class="col-3">
            <x-core::form.label class="mb-0">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.rows')) !!}</x-core::form.label>
            <div class="form-control-plaintext">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.rows_helper')) !!}</div>
        </div>
        <div class="col-9">
            <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.rows')) !!}</x-core::form.label>
            <input type="number" class="form-control" placeholder="Number" value="" min="1" max="10">
        </div>
    </div>
</x-core::custom-template>

<x-core::custom-template id="_options-selectchoices_template">
    <div class="line row border-bottom py-3" data-option="selectchoices">
        <div class="col-3">
            <x-core::form.label class="mb-0">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.choices')) !!}</x-core::form.label>
            <div class="form-control-plaintext">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.choices_helper')) !!}</div>
        </div>
        <div class="col-9">
            <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.choices')) !!}</x-core::form.label>
            <textarea class="form-control" rows="5"></textarea>
        </div>
    </div>
</x-core::custom-template>

<x-core::custom-template id="_options-buttonlabel_template">
    <div class="line row border-bottom py-3" data-option="buttonlabel">
        <div class="col-3">
            <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.button_label')) !!}</x-core::form.label>
        </div>
        <div class="col-9">
            <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.button_label')) !!}</x-core::form.label>
            <input type="text" class="form-control" placeholder="Add new" value="">
        </div>
    </div>
</x-core::custom-template>

<x-core::custom-template id="_new-field-source_template">
    <li class="ui-sortable-handle active">
        <div class="field-column">
            <div class="row">
                <div class="text col-4 field-label">{{ trans('plugins/custom-field::base.form.new_field') }}</div>
                <div class="text col-4 field-slug"></div>
                <div class="text col-4 field-type">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.types.text')) !!}</div>
            </div>
            <a class="show-item-details" title="" href="#"><i class="fa fa-angle-down"></i></a>
        </div>
        <div class="item-details px-3">
            <div class="line row border-bottom py-3" data-option="title">
                <div class="col-3">
                    <x-core::form.label class="mb-0">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.field_label')) !!}</x-core::form.label>
                    <div class="form-control-plaintext">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.field_label_helper')) !!}</div>
                </div>
                <div class="col-9">
                    <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.field_label')) !!}</x-core::form.label>
                    <input type="text" class="form-control" placeholder="" value="New field">
                </div>
            </div>
            <div class="line row border-bottom py-3" data-option="slug">
                <div class="col-3">
                    <x-core::form.label class="mb-0">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.field_name')) !!}</x-core::form.label>
                    <div class="form-control-plaintext">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.field_name_helper')) !!}</div>
                </div>
                <div class="col-9">
                    <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.field_name')) !!}</x-core::form.label>
                    <input type="text" class="form-control" placeholder="" value="">
                </div>
            </div>
            <div class="line row border-bottom py-3" data-option="type">
                <div class="col-3">
                    <x-core::form.label class="mb-0">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.field_type')) !!}</x-core::form.label>
                    <div class="form-control-plaintext">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.field_type_helper')) !!}</div>
                </div>
                <div class="col-9">
                    <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.field_type')) !!}</x-core::form.label>
                    <select class="form-control change-field-type">
                        <optgroup label="{{ trans('plugins/custom-field::base.form.groups.basic') }}">
                            <option value="text" selected="selected">{{ trans('plugins/custom-field::base.form.types.text') }}</option>
                            <option value="textarea">{{ trans('plugins/custom-field::base.form.types.textarea') }}</option>
                            <option value="number">{{ trans('plugins/custom-field::base.form.types.number') }}</option>
                            <option value="email">{{ trans('plugins/custom-field::base.form.types.email') }}</option>
                            <option value="password">{{ trans('plugins/custom-field::base.form.types.password') }}</option>
                        </optgroup>
                        <optgroup label="{{ trans('plugins/custom-field::base.form.groups.content') }}">
                            <option value="wysiwyg">{{ trans('plugins/custom-field::base.form.types.wysiwyg') }}</option>
                            <option value="image">{{ trans('plugins/custom-field::base.form.types.image') }}</option>
                            <option value="file">{{ trans('plugins/custom-field::base.form.types.file') }}</option>
                        </optgroup>
                        <optgroup label="{{ trans('plugins/custom-field::base.form.groups.choice') }}">
                            <option value="select">{{ trans('plugins/custom-field::base.form.types.select') }}</option>
                            <option value="checkbox">{{ trans('plugins/custom-field::base.form.types.checkbox') }}</option>
                            <option value="radio">{{ trans('plugins/custom-field::base.form.types.radio') }}</option>
                        </optgroup>
                        <optgroup label="{{ trans('plugins/custom-field::base.form.groups.other') }}">
                            <option value="repeater">{{ trans('plugins/custom-field::base.form.types.repeater') }}</option>
                        </optgroup>
                    </select>
                </div>
            </div>
            <div class="line row border-bottom py-3" data-option="instructions">
                <div class="col-3">
                    <x-core::form.label class="mb-0">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.field_instructions')) !!}</x-core::form.label>
                    <div class="form-control-plaintext">{!! BaseHelper::clean(trans('plugins/custom-field::base.form.field_instructions_helper')) !!}</div>
                </div>
                <div class="col-9">
                    <x-core::form.label>{!! BaseHelper::clean(trans('plugins/custom-field::base.form.field_instructions')) !!}</x-core::form.label>
                    <textarea class="form-control" rows="5"></textarea>
                </div>
            </div>
            <div class="options">___options___</div>
            <div class="btn-list justify-content-end m-2">
                <x-core::button type="button" color="danger" class="btn-remove" size="sm">
                    {{ trans('plugins/custom-field::base.form.remove_field') }}
                </x-core::button>
                <x-core::button type="button" color="primary" class="btn-close-field" size="sm">
                    {{ trans('plugins/custom-field::base.form.close_field') }}
                </x-core::button>
            </div>
        </div>
    </li>
</x-core::custom-template>
