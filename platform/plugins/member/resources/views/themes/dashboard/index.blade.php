@extends('plugins/member::themes.dashboard.layouts.master')

@section('content')
    {!! apply_filters(MEMBER_TOP_STATISTIC_FILTER, null) !!}

    @if (is_plugin_active('blog'))
        <x-core::stat-widget class="mb-3 row-cols-1 row-cols-sm-2 row-cols-md-3">
            <x-core::stat-widget.item
                :label="trans('plugins/blog::member.published_posts')"
                :value="$user->posts()->where('status', Botble\Base\Enums\BaseStatusEnum::PUBLISHED)->count()"
                icon="ti ti-circle-check"
                color="primary"
            />

            <x-core::stat-widget.item
                :label="trans('plugins/blog::member.pending_posts')"
                :value="$user->posts()->where('status', Botble\Base\Enums\BaseStatusEnum::PENDING)->count()"
                icon="ti ti-clock-hour-8"
                color="success"
            />

            <x-core::stat-widget.item
                :label="trans('plugins/blog::member.draft_posts')"
                :value="$user->posts()->where('status', Botble\Base\Enums\BaseStatusEnum::DRAFT)->count()"
                icon="ti ti-notes"
                color="danger"
            />
        </x-core::stat-widget>
    @endif

    <activity-log-component></activity-log-component>
@stop
