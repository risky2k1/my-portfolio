@if($copyright = theme_option('copyright'))
    <footer class="d-block d-lg-none text-center py-3">
        <p class="text-muted">{!! BaseHelper::clean(str_replace('%Y', Carbon\Carbon::now()->year, $copyright)) !!}</p>
    </footer>
@endif

<script src="{{ asset('vendor/core/plugins/member/js/dashboard/script.js') }}"></script>
