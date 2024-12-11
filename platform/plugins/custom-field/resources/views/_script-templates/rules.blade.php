<x-core::custom-template id="rules_group_template">
    <div class="row gap-2 gap-md-0 rule-line">
        <div class="col-md-4">
            <select class="form-select rule-a">
                @foreach($ruleGroups as $key => $row)
                    <optgroup label="{{ trans('plugins/custom-field::rules.groups.' . $key) }}">
                        @foreach($row['items'] as $item)
                            <option value="{{ $item['slug'] ?? '' }}">{{ $item['title'] ?? '' }}</option>
                        @endforeach
                    </optgroup>
                @endforeach
            </select>
        </div>
        <div class="col-md-3">
            <select class="form-select rule-type">
                <option value="==">{{ trans('plugins/custom-field::base.form.rules.is_equal_to') }}</option>
                <option value="!=">{{ trans('plugins/custom-field::base.form.rules.is_not_equal_to') }}</option>
            </select>
        </div>
        <div class="col-md-3 rules-b-group">
            @foreach($ruleGroups as $key => $row)
                @foreach($row['items'] as $item)
                    <select class="form-select rule-b" data-rel="{{ $item['slug'] ?? '' }}">
                        @foreach($item['data'] as $keyData => $rowData)
                            <option value="{{ $keyData ?? '' }}">{{ $rowData ?? '' }}</option>
                        @endforeach
                    </select>
                @endforeach
            @endforeach
        </div>
        <div class="col-md-2">
            <x-core::button
                type="button"
                class="location-add-rule-and location-add-rule"
            >
                {{ trans('plugins/custom-field::base.form.rules.and') }}
            </x-core::button>
        </div>

        <a href="#" title="" class="remove-rule-line"><span>&nbsp;</span></a>
    </div>
</x-core::custom-template>

<x-core::custom-template id="rules_line_group_template">
    <div class="line-group" data-text="{{ trans('plugins/custom-field::base.form.rules.or') }}"></div>
</x-core::custom-template>
