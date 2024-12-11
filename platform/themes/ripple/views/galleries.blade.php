@php Theme::set('section-name', __('Galleries')) @endphp

<article class="post post--single">
    <div class="post__content">
        @if (isset($galleries) && $galleries->isNotEmpty())
            <div class="gallery-wrap">
                @foreach ($galleries as $gallery)
                    <div class="gallery-item">
                        <div class="img-wrap">
                            <a href="{{ $gallery->url }}">
                                {{ RvMedia::image($gallery->image, $gallery->name, 'medium') }}
                            </a>
                        </div>
                        <div class="gallery-detail">
                            <div class="gallery-title"><a href="{{ $gallery->url }}">{{ $gallery->name }}</a></div>
                            <div class="gallery-author">{{ __('By') }} {{ $gallery->user->name }}</div>
                        </div>
                    </div>
                @endforeach
            </div>
        @endif
    </div>
</article>
