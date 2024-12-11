@php Theme::set('section-name', $tag->name) @endphp

@if ($posts->isNotEmpty())
    @foreach ($posts as $post)
        <article class="post post__horizontal mb-40 clearfix">
            <div class="post__thumbnail">
                {{ RvMedia::image($post->image, $post->name, 'medium') }}
                <a href="{{ $post->url }}" title="{{ $post->name }}" class="post__overlay"></a>
            </div>
            <div class="post__content-wrap">
                <header class="post__header">
                    <h3 class="post__title"><a href="{{ $post->url }}" title="{{ $post->name }}">{{ $post->name }}</a></h3>
                    <div class="post__meta">
                        {!! Theme::partial('blog.post-meta', compact('post')) !!}
                    </div>
                </header>
                <div class="post__content">
                    <p data-number-line="4">{{ $post->description }}</p>
                </div>
            </div>
        </article>
    @endforeach
    <div class="page-pagination text-right">
        {!! $posts->links() !!}
    </div>
@else
    <div class="alert alert-warning">
        <p class="mb-0">{{ __('There is no data to display!') }}</p>
    </div>
@endif
