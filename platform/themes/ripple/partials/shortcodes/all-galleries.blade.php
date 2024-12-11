<section class="section pt-50 pb-50" @if ($shortcode->background_color) style="background-color: {{ $shortcode->background_color }} !important;" @endif>
    <div class="container">
        <div class="page-content">
            <div class="post-group post-group--single">
                <div class="post-group__header">
                    <h3 class="post-group__title">
                        <a
                            href="{{ Gallery::getGalleriesPageUrl() }}">{{ isset($shortcode) && $shortcode->title ? $shortcode->title : trans('plugins/gallery::gallery.galleries') }}</a>
                    </h3>
                </div>
                <div class="post-group__content">
                    {!! $galleries !!}
                </div>
            </div>
        </div>
    </div>
</section>
