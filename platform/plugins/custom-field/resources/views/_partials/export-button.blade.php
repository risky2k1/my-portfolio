<x-core::button
    tag="a"
    href="{{ route('custom-fields.export', ['id' => $model->getKey()]) }}"
    download="{{ $model->title }}"
    icon="ti ti-download"
>
    {{ trans('plugins/custom-field::base.export') }}
</x-core::button>
