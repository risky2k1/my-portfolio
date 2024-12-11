@if ($post->first_category?->name)
    <span class="post-category">
        {!! BaseHelper::renderIcon('ti ti-cube') !!}
        <a href="{{ $post->first_category->url }}">{{ $post->first_category->name }}</a>
    </span>
@endif

<span class="created_at">
    {!! BaseHelper::renderIcon('ti ti-clock') !!} {{ Theme::formatDate($post->created_at) }}
</span>

@if ($post->author->name)
    <span class="post-author">{!! BaseHelper::renderIcon('ti ti-user-circle') !!} <span>{{ $post->author->name }}</span></span>
@endif
