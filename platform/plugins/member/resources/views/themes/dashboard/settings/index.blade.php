@extends('plugins/member::themes.dashboard.layouts.master')

@section('content')
    <x-core::card>
        <x-core::card.header>
            <x-core::tab class="card-header-tabs">
                <x-core::tab.item
                    id="profile-tab"
                    :label="trans('plugins/member::dashboard.account_field_title')"
                    :is-active="true"
                />
                <x-core::tab.item
                    id="avatar-tab"
                    :label="trans('plugins/member::dashboard.profile-picture')"
                />
                <x-core::tab.item
                    id="change-password-tab"
                    :label="trans('plugins/member::dashboard.change_password')"
                />
                {!! apply_filters('member_dashboard_sidebar_menu', null) !!}
                {!! apply_filters('member_settings_register_content_tabs', null) !!}
            </x-core::tab>
        </x-core::card.header>

        <x-core::card.body>
            <x-core::tab.content>
                <x-core::tab.pane id="profile-tab" :is-active="true">
                    {!! $profileForm !!}
                </x-core::tab.pane>
                <x-core::tab.pane id="avatar-tab">
                    <x-core::crop-image
                        :label="trans('plugins/member::dashboard.profile-picture')"
                        name="avatar_file"
                        :value="auth('member')->user()->avatar_url"
                        :action="route('public.member.avatar')"
                    />
                </x-core::tab.pane>
                <x-core::tab.pane id="change-password-tab">
                    {!! $changePasswordForm !!}
                </x-core::tab.pane>
                {!! apply_filters('member_settings_register_content_tab_inside', null) !!}
            </x-core::tab.content>
        </x-core::card.body>
    </x-core::card>
@endsection

@push('scripts')
    {!! JsValidator::formRequest(Botble\Member\Http\Requests\SettingRequest::class) !!}
    {!! JsValidator::formRequest(Botble\Member\Http\Requests\UpdatePasswordRequest::class) !!}
@endpush
