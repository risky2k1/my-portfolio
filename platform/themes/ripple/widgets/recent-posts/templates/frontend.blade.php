@if ($posts->isNotEmpty())
    @if ($sidebar == 'footer_sidebar')
        <div class="col-lg-3 col-md-3 col-sm-6 col-12">
            <div class="widget widget--transparent widget__footer">
            @else
                <div class="widget widget__recent-post">
    @endif
    @if ($config['name'])
        <div class="widget__header">
            <h3 class="widget__title">{{ $config['name'] }}</h3>
        </div>
    @endif
    <div class="widget__content">
        <ul @if ($sidebar == 'footer_sidebar') class="list list--light list--fadeIn" @endif>
            @foreach ($posts as $post)
                <li>
                    @if ($sidebar == 'footer_sidebar')
                        <a
                            href="{{ $post->url }}"
                            title="{{ $post->name }}"
                            data-number-line="2"
                        >{{ $post->name }}</a>
                    @else
                        <article class="post post__widget clearfix">
                            <div class="post__thumbnail">
                                {{ RvMedia::image($post->image, $post->name, 'thumb') }}
                                <a
                                    href="{{ $post->url }}"
                                    title="{{ $post->name }}"
                                    class="post__overlay"
                                ></a>
                            </div>
                            <header class="post__header">
                                <h4 class="post__title text-truncate-2"><a
                                        href="{{ $post->url }}"
                                        title="{{ $post->name }}"
                                        data-number-line="2"
                                    >{{ $post->name }}</a></h4>
                                <div class="post__meta"><span
                                        class="post__created-at">{{ Theme::formatDate($post->created_at) }}</span>
                                </div>
                            </header>
                        </article>
                    @endif
                </li>
            @endforeach
        </ul>
    </div>
    </div>
    @if ($sidebar == 'footer_sidebar')
        </div>
    @endif
@endif
