<div class="custom-fields-rules">
    {!! $object && $object->id ? $object->rules_template : $rules_template !!}
    @include('plugins/custom-field::_script-templates.edit-field-group-items')
    <textarea
        name="rules"
        id="custom_fields_rules"
        class="form-control hidden"
        style="display: none !important;"
    >{!! old('field_group.rules', $object && $object->id ? $object->rules : '[]') !!}</textarea>
    <textarea
        name="group_items"
        id="custom_fields"
        class="form-control hidden"
        style="display: none !important;"
    >{!! old('field_group.group_items', $customFieldItems ?? '[]') !!}</textarea>
    <textarea
        name="deleted_items"
        id="deleted_items"
        class="form-control hidden"
        style="display: none !important;"
    >{!! old('field_group.deleted_items', '[]') !!}</textarea>

    <x-core::form.label :label="trans('plugins/custom-field::base.form.rules.rules_helper')" />

    <div class="line-group-container"></div>

    <div>
        <x-core::form.label :label="trans('plugins/custom-field::base.form.rules.or')" />

        <x-core::button
            type="button"
            color="info"
            class="location-add-rule"
        >
            {{ trans('plugins/custom-field::base.form.rules.add_rule_group') }}
        </x-core::button>
    </div>
</div>
