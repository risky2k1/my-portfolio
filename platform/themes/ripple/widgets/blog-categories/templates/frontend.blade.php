@if ($categories->isNotEmpty())
    <aside class="widget widget--transparent">
        @if ($config['name'])
            <div class="widget__header">
                <h3 class="widget__title">{{ $config['name'] }}</h3>
            </div>
        @endif
        <div class="widget__content">
            <ul class="list list--fadeIn">
                @foreach($categories as $category)
                    <li>
                        <a href="{{ $category->url }}">{{ $category->name }}</a>
                        @if ($config['display_posts_count'] === 'yes')
                            <span>({{ number_format($category->posts_count)  }})</span>
                        @endif
                    </li>
                @endforeach
            </ul>
        </div>
    </aside>
@endif
