@if ($posts->isNotEmpty())
    <section class="section pt-50 pb-50 bg-lightgray" @if ($shortcode->background_color) style="background-color: {{ $shortcode->background_color }} !important;" @endif>
        <div class="container">
            <div class="post-group post-group--hero">
                @foreach ($posts as $post)
                    @if ($loop->first)
                        <div class="post-group__left">
                            <article class="post post__inside post__inside--feature">
                                <div class="post__thumbnail">
                                    {{ RvMedia::image($post->image, $post->name, 'featured', attributes: ['loading' => 'eager']) }}
                                    <a
                                        class="post__overlay"
                                        href="{{ $post->url }}"
                                        title="{{ $post->name }}"
                                    ></a>
                                </div>
                                <header class="post__header">
                                    <h3 class="post__title text-truncate"><a
                                            href="{{ $post->url }}">{{ $post->name }}</a></h3>
                                    <div class="post__meta">
                                        {!! Theme::partial('blog.post-meta', compact('post')) !!}
                                    </div>
                                </header>
                            </article>
                        </div>
                        <div class="post-group__right">
                        @else
                            <div class="post-group__item">
                                <article class="post post__inside post__inside--feature post__inside--feature-small">
                                    <div class="post__thumbnail">
                                        {{ RvMedia::image($post->image, $post->name, 'medium', attributes: ['loading' => 'eager']) }}
                                        <a
                                            class="post__overlay"
                                            href="{{ $post->url }}"
                                            title="{{ $post->name }}"
                                        ></a>
                                    </div>
                                    <header class="post__header">
                                        <h3 class="post__title text-truncate"><a
                                                href="{{ $post->url }}">{{ $post->name }}</a>
                                        </h3>
                                    </header>
                                </article>
                            </div>
                            @if ($loop->last)
                        </div>
                    @endif
                @endif
@endforeach
</div>
</div>
</section>
@endif
