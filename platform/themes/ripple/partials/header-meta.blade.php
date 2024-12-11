<style>
    :root {
        --color-1st: {{ theme_option('primary_color', '#AF0F26') }};
        --primary-color: {{ theme_option('primary_color', '#AF0F26') }};
    }
</style>

@php
    Theme::asset()->container('footer')->remove('simple-slider-js');
@endphp
