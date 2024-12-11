@if ($posts->isNotEmpty())
    @foreach ($posts as $post)
        <article class="post post__horizontal mb-40 clearfix">
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
                    <div class="post__meta">
                        {!! Theme::partial('blog.post-meta', compact('post')) !!}
                    </div>
                </header>
                <div class="post__content p-0">
                    <p data-number-line="4">{{ $post->description }}</p>
                </div>
            </div>
        </article>
    @endforeach
    <div class="page-pagination text-right">
        {!! $posts->withQueryString()->links() !!}
    </div>
@endif

<style>
    .section.pt-50.pb-100 {
        background-color: #ecf0f1;
    }
</style>
