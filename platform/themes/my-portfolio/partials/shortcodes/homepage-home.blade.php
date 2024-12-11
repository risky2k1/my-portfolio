<section id="home" class="banner"
         style="background-image: url({{ $shortcode->img_bg ? RvMedia::url($shortcode->img_bg) : Theme::asset()->url('images/background/home-banner-bg.jpg') }})"
         data-stellar-background-ratio=".7"
         data-scroll-index="0">
    <!--Particles Container-->
    <div id="particles-js"></div>
    <div class="container">
        <!--Banner Content-->
        <div class="banner-caption">
            <h1>{{ $shortcode->title }}</h1>
            <p class="cd-headline clip mt-30">
                <span>{{ $shortcode->subtitle_1 }}</span><br>
                <span class="blc">{{ $shortcode->subtitle_2 }}</span>
                <span class="cd-words-wrapper">
                    @dd($shortcode->skills)
                    @foreach($shortcode->skills as $skill)

                    @endforeach
                        <b class="is-visible">Creating Websites.</b>
                        <b>Designing UI/UX.</b>
                        <b>Designing UI/UX 2.</b>
                        <b>Designing UI/UX 3 .</b>
                        <b>Designing UI/UX 4.</b>
                    </span>
            </p>
        </div>
        <div class="arrow bounce">
            <a class="fa fa-chevron-down fa-2x" href="#" data-scroll-nav="1"></a>
        </div>
    </div>
</section>
