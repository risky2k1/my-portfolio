{!! SeoHelper::render() !!}

@include('plugins/member::themes.dashboard.layouts.header-meta')

<link href="{{ asset('vendor/core/plugins/member/css/dashboard/style.css') }}" rel="stylesheet">

@if (BaseHelper::isRtlEnabled())
    <link href="{{ asset('vendor/core/core/base/css/core.rtl.css') }}" rel="stylesheet">
    <link href="{{ asset('vendor/core/plugins/member/css/dashboard/style-rtl.css') }}" rel="stylesheet">
@endif

@if (File::exists($styleIntegration = Theme::getStyleIntegrationPath()))
    {!! Html::style(Theme::asset()->url('css/style.integration.css?v=' . filectime($styleIntegration))) !!}
@endif
