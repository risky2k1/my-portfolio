@extends('core/table::table')

@section('main-table')
    <x-core::form
        :url="route('custom-fields.import')"
        method="post"
        class="import-field-group"
    >
        <input
            type="file"
            accept="application/json"
            class="d-none"
            id="import_json"
        >
        @parent
    </x-core::form>
@endsection
