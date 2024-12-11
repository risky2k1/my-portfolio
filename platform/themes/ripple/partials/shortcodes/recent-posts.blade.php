<section class="section pt-50 pb-50" @if ($shortcode->background_color) style="background-color: {{ $shortcode->background_color }} !important;" @endif>
    <div class="container">
        <div class="row">
            @php
                $topSidebarContent = $withSidebar ? dynamic_sidebar('top_sidebar') : null;
            @endphp
            <div @class([
                'col-lg-9' => $topSidebarContent,
                'col-12' => !$topSidebarContent,
            ])>
                <div class="page-content">
                    <div class="post-group post-group--single">
                        <div class="post-group__header">
                            <h3 class="post-group__title">{{ $title }}</h3>
                        </div>
                        <div class="post-group__content">
                            <div class="row">
                                @foreach ($posts as $post)
                                    @if ($loop->first)
                                        <div class="col-md-6 col-sm-6 col-12">
                                            <article class="post post__vertical post__vertical--single">
                                                <div class="post__thumbnail">
                                                    {{ RvMedia::image($post->image, $post->name, 'medium') }}
                                                    <a
                                                        class="post__overlay"
                                                        href="{{ $post->url }}"
                                                        title="{{ $post->name }}"
                                                    ></a>
                                                </div>
                                                <div class="post__content-wrap">
                                                    <header class="post__header">
                                                        <h3 class="post__title"><a
                                                                href="{{ $post->url }}"
                                                                title="{{ $post->name }}"
                                                            >{{ $post->name }}</a></h3>
                                                        <div class="post__meta"><span
                                                                class="created__month">{{ $post->created_at->translatedFormat('M') }}</span><span
                                                                class="created__date"
                                                            >{{ $post->created_at->translatedFormat('d') }}</span><span
                                                                class="created__year"
                                                            >{{ $post->created_at->translatedFormat('Y') }}</span>
                                                        </div>
                                                    </header>
                                                    <div class="post__content">
                                                        <p data-number-line="4">{{ $post->description }}</p>
                                                    </div>
                                                </div>
                                            </article>
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-12">
                                        @else
                                            <article
                                                class="post post__horizontal post__horizontal--single mb-20 clearfix"
                                            >
                                                <div class="post__thumbnail">
                                                    {{ RvMedia::image($post->image, $post->name, 'medium') }}
                                                    <a
                                                        class="post__overlay"
                                                        href="{{ $post->url }}"
                                                        title="{{ $post->name }}"
                                                    ></a>
                                                </div>
                                                <div class="post__content-wrap">
                                                    <header class="post__header">
                                                        <h3 class="post__title"><a
                                                                href="{{ $post->url }}"
                                                                title="{{ $post->name }}"
                                                            >{{ $post->name }}</a></h3>
                                                        <div class="post__meta"><span
                                                                class="post__created-at">{{ Theme::formatDate($post->created_at) }}</span>
                                                        </div>
                                                    </header>
                                                </div>
                                            </article>
                                    @endif
                                    @if ($loop->last)
                            </div>
                            @endif
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>

        @if ($topSidebarContent)
            <div class="col-lg-3">
                <div class="page-sidebar">
                    {!! $topSidebarContent !!}
                </div>
            </div>
        @endif
    </div>
    </div>
</section>
