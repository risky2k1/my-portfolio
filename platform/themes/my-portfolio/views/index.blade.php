<!--Home Section Start-->
{!! do_shortcode('[homepage-home title="Phm Tuns" subtitle_1="LIST SDASDASDASD"]') !!}
<!--Home Section End-->

<!--About Section Start-->
<section class="about pt-100 pb-100" data-scroll-index="1">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-6">
                <!--About Image-->
                <div class="about-img">
                    <img src="{{ Theme::asset()->url('images/about-img.jpg') }}" alt="">
                </div>
            </div>
            <div class="col-lg-7 col-md-6">
                <!--About Content-->
                <div class="about-content">
                    <div class="about-heading">
                        <h2>About Me.</h2>
                        <span>UI/UX Designer & Web Developer</span>
                    </div>
                    <p>I'm <b>Kalvin Doe</b> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                        when an unknown printer took a galley of type and scrambled it to specimen book.</p>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a
                        more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                    <!--About Social Icons-->
                    <div class="social-icons">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                    <span class="about-button">
                                <a class="main-btn" href="#">Download CV</a>
                            </span>
                </div>
            </div>
        </div>
    </div>
</section>
<!--About Section End-->

<!--Services Section Start-->
<section class="services bg-gray pt-100 pb-50" data-scroll-index="2">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="heading text-center">
                    <h6>Services</h6>
                    <h2>What I Can Do</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <!--Service Item-->
                <div class="service-item">
                            <span class="icon">
                                <i class="fa fa-laptop"></i>
                            </span>
                    <h4>Web Design</h4>
                    <p>Lorem Ipsum is simply dummy text of the Lorem has been the industry's standard dummy text ever.</p>
                </div>
            </div>
            <div class="col-md-4">
                <!--Service Item-->
                <div class="service-item">
                            <span class="icon">
                                <i class="fa fa-gears"></i>
                            </span>
                    <h4>Web Development</h4>
                    <p>Lorem Ipsum is simply dummy text of the Lorem has been the industry's standard dummy text ever.</p>
                </div>
            </div>
            <div class="col-md-4">
                <!--Service Item-->
                <div class="service-item">
                            <span class="icon">
                                <i class="fa fa-mobile"></i>
                            </span>
                    <h4>Responsive Design</h4>
                    <p>Lorem Ipsum is simply dummy text of the Lorem has been the industry's standard dummy text ever.</p>
                </div>
            </div>
            <div class="col-md-4">
                <!--Service Item-->
                <div class="service-item">
                            <span class="icon">
                                <i class="fa fa-rocket"></i>
                            </span>
                    <h4>Branding Identity</h4>
                    <p>Lorem Ipsum is simply dummy text of the Lorem has been the industry's standard dummy text ever.</p>
                </div>
            </div>
            <div class="col-md-4">
                <!--Service Item-->
                <div class="service-item">
                            <span class="icon">
                                <i class="fa fa-pencil"></i>
                            </span>
                    <h4>Creative Design</h4>
                    <p>Lorem Ipsum is simply dummy text of the Lorem has been the industry's standard dummy text ever.</p>
                </div>
            </div>
            <div class="col-md-4">
                <!--Service Item-->
                <div class="service-item">
                            <span class="icon">
                                <i class="fa fa-support"></i>
                            </span>
                    <h4>Support</h4>
                    <p>Lorem Ipsum is simply dummy text of the Lorem has been the industry's standard dummy text ever.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Services Section End-->

<!--Stats Section Start-->
<section class="stats pt-100 pb-100" style="background-image: url({{ Theme::asset()->url('images/background/stats-bg.jpg') }})">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <!--Stats Item-->
                <div class="single-stat">
                            <span class="stat-icon">
                                <i class="fa fa-users" aria-hidden="true"></i>
                            </span>
                    <h2 class="counter" data-count="220">10</h2>
                    <p>Happy Clients</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <!--Stats Item-->
                <div class="single-stat">
                            <span class="stat-icon">
                                <i class="fa fa-thumbs-up" aria-hidden="true"></i>
                            </span>
                    <h2 class="counter" data-count="700">20</h2>
                    <p>Projects Completed</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <!--Stats Item-->
                <div class="single-stat">
                            <span class="stat-icon">
                                <i class="fa fa-edit" aria-hidden="true"></i>
                            </span>
                    <h2 class="counter" data-count="1100">10</h2>
                    <p>Lines Of Code</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <!--Stats Item-->
                <div class="single-stat">
                            <span class="stat-icon">
                                <i class="fa fa-trophy" aria-hidden="true"></i>
                            </span>
                    <h2 class="counter" data-count="160">15</h2>
                    <p>Awards Achieved</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Stats Section End-->


<!--Portfolio Section Start-->
<section class="portfolio pt-100 pb-70" data-scroll-index="3">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="heading text-center">
                    <h6>Portfolio</h6>
                    <h2>Work I Have Done</h2>
                </div>
                <div class="portfolio-filter text-center">
                    <ul>
                        <li class="sel-item" data-filter="*">All</li>
                        <li data-filter=".design">Web Design</li>
                        <li data-filter=".application">Applications</li>
                        <li data-filter=".development">Development</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row portfolio-items">
            <!--Portfolio Item-->
            <div class="col-lg-4 col-md-6 item application">
                <div class="item-content">
                    <img src="{{ Theme::asset()->url('images/portfolio/img-1.jpg') }}" alt="">
                    <div class="item-overlay">
                        <h6>Application</h6>
                        <div class="icons">
                                    <span class="icon link">
                                        <a href="{{ Theme::asset()->url('images/portfolio/img-1.jpg') }}">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </span>
                        </div>
                    </div>
                </div>
            </div>
            <!--Portfolio Item-->
            <div class="col-lg-4 col-md-6 item design">
                <div class="item-content">
                    <img src="{{ Theme::asset()->url('images/portfolio/img-2.jpg') }}" alt="">
                    <div class="item-overlay">
                        <h6>Web Design</h6>
                        <div class="icons">
                                    <span class="icon link">
                                        <a href="{{ Theme::asset()->url('images/portfolio/img-2.jpg') }}">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </span>
                        </div>
                    </div>
                </div>
            </div>
            <!--Portfolio Item-->
            <div class="col-lg-4 col-md-6 item development">
                <div class="item-content">
                    <img src="{{ Theme::asset()->url('images/portfolio/img-3.jpg') }}" alt="">
                    <div class="item-overlay">
                        <h6>Application</h6>
                        <div class="icons">
                                    <span class="icon link">
                                        <a href="{{ Theme::asset()->url('images/portfolio/img-3.jpg') }}">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </span>
                        </div>
                    </div>
                </div>
            </div>
            <!--Portfolio Item-->
            <div class="col-lg-4 col-md-6 item design development">
                <div class="item-content">
                    <img src="{{ Theme::asset()->url('images/portfolio/img-4.jpg') }}" alt="">
                    <div class="item-overlay">
                        <h6>Development</h6>
                        <div class="icons">
                                    <span class="icon link">
                                        <a href="{{ Theme::asset()->url('images/portfolio/img-4.jpg') }}">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </span>
                        </div>
                    </div>
                </div>
            </div>
            <!--Portfolio Item-->
            <div class="col-lg-4 col-md-6 item development application">
                <div class="item-content">
                    <img src="{{ Theme::asset()->url('images/portfolio/img-5.jpg') }}" alt="">
                    <div class="item-overlay">
                        <h6>Web Design</h6>
                        <div class="icons">
                                    <span class="icon link">
                                        <a href="{{ Theme::asset()->url('images/portfolio/img-5.jpg') }}">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </span>
                        </div>
                    </div>
                </div>
            </div>
            <!--Portfolio Item-->
            <div class="col-lg-4 col-md-6 item application development">
                <div class="item-content">
                    <img src="{{ Theme::asset()->url('images/portfolio/img-6.jpg') }}" alt="">
                    <div class="item-overlay">
                        <h6>Web Design</h6>
                        <div class="icons">
                                    <span class="icon link">
                                        <a href="{{ Theme::asset()->url('images/portfolio/img-6.jpg') }}">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Portfolio Section End-->

<!--Blog Section Start-->
<section class="blogs pt-100 pb-100 bg-gray" data-scroll-index="4">
    <div class="container">
        <div class="row">
            <div class="col text-center">
                <div class="heading text-center">
                    <h6>Blog</h6>
                    <h2>Latest News</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="owl-carousel owl-theme">
                <!--Blogs Item-->
                <div class="blog-item">
                    <div class="blog-img">
                        <a href="#">
                            <img src="{{ Theme::asset()->url('images/blog/img-1.jpg') }}" alt="">
                        </a>
                    </div>
                    <div class="blog-content">
                        <h3>The best of web design and web design inspiration</h3>
                        <p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first ...</p>
                        <div class="blog-meta">
                                    <span class="more">
                                        <a href="#">Read More</a>
                                    </span>
                            <span class="date">
                                        1/April/2018
                                    </span>
                        </div>
                    </div>
                </div>
                <!--Blogs Item-->
                <div class="blog-item">
                    <div class="blog-img">
                        <a href="#">
                            <img src="{{ Theme::asset()->url('images/blog/img-2.jpg') }}" alt="">
                        </a>
                    </div>
                    <div class="blog-content">
                        <h3>The best of web design and web design inspiration</h3>
                        <p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first ...</p>
                        <div class="blog-meta">
                                    <span class="more">
                                        <a href="single-blog.html">Read More</a>
                                    </span>
                            <span class="date">
                                        1/April/2018
                                    </span>
                        </div>
                    </div>
                </div>
                <!--Blogs Item-->
                <div class="blog-item">
                    <div class="blog-img">
                        <a href="single-blog.html">
                            <img src="{{ Theme::asset()->url('images/blog/img-3.jpg') }}" alt="">
                        </a>
                    </div>
                    <div class="blog-content">
                        <h3>The best of web design and web design inspiration</h3>
                        <p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first ...</p>
                        <div class="blog-meta">
                                    <span class="more">
                                        <a href="single-blog.html">Read More</a>
                                    </span>
                            <span class="date">
                                        1/April/2018
                                    </span>
                        </div>
                    </div>
                </div>
                <!--Blogs Item-->
                <div class="blog-item">
                    <div class="blog-img">
                        <a href="single-blog.html">
                            <img src="{{ Theme::asset()->url('images/blog/img-4.jpg') }}" alt="">
                        </a>
                    </div>
                    <div class="blog-content">
                        <h3>The best of web design and web design inspiration</h3>
                        <p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first ...</p>
                        <div class="blog-meta">
                                    <span class="more">
                                        <a href="single-blog.html">Read More</a>
                                    </span>
                            <span class="date">
                                        1/April/2018
                                    </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col text-center">
                <div class="blog-button pt-40">
                    <a class="main-btn" href="blogs-page.html">View More</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Blog Section End-->

<!--Testimonials Section Start-->
<section class="testimonials pt-100 pb-100" style="background-image: url({{ Theme::asset()->url('images/background/testimonials-bg.jpg') }})">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="owl-carousel owl-theme text-center">
                    <!--Testimonials Item-->
                    <div class="testimonial-item">
                        <div class="author-img">
                            <img src="{{ Theme::asset()->url('images/testimonial/img-1.jpg') }}" alt="">
                        </div>
                        <h5>Mr John Doe</h5>
                        <span>Creative Director</span>
                        <p>Dolor facilis veritatis doloremque dicta eos Voluptate earum nulla ad et esse Saepe asperiores nisi facere ipsam corporis. Dolorem praesentium tenetur tempore dolorem illum
                            autem? Veritatis fuga quasi sunt tenetur. Expedita id eaque incidunt beatae nesciunt! In similique exercitationem tempore excepturi placeat Nostrum ducimus dicta temporibus
                            quas!</p>
                    </div>
                    <!--Testimonials Item-->
                    <div class="testimonial-item">
                        <div class="author-img">
                            <img src="{{ Theme::asset()->url('images/testimonial/img-1.jpg') }}" alt="">
                        </div>
                        <h5>Mr John Doe</h5>
                        <span>Creative Director</span>
                        <p>Dolor facilis veritatis doloremque dicta eos Voluptate earum nulla ad et esse Saepe asperiores nisi facere ipsam corporis. Dolorem praesentium tenetur tempore dolorem illum
                            autem? Veritatis fuga quasi sunt tenetur. Expedita id eaque incidunt beatae nesciunt! In similique exercitationem tempore excepturi placeat Nostrum ducimus dicta temporibus
                            quas!</p>
                    </div>
                    <!--Testimonials Item-->
                    <div class="testimonial-item">
                        <div class="author-img">
                            <img src="{{ Theme::asset()->url('images/testimonial/img-1.jpg') }}" alt="">
                        </div>
                        <h5>Mr John Doe</h5>
                        <span>Creative Director</span>
                        <p>Dolor facilis veritatis doloremque dicta eos Voluptate earum nulla ad et esse Saepe asperiores nisi facere ipsam corporis. Dolorem praesentium tenetur tempore dolorem illum
                            autem? Veritatis fuga quasi sunt tenetur. Expedita id eaque incidunt beatae nesciunt! In similique exercitationem tempore excepturi placeat Nostrum ducimus dicta temporibus
                            quas!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Testimonials Section End-->

<!--Contact Section Start-->
<section class="contact pt-100 pb-100" data-scroll-index="5">
    <div class="container">
        <div class="row">
            <div class="col text-center">
                <div class="heading">
                    <h6>Contact</h6>
                    <h2>Get In Touch</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <!--Contact Form-->
                <form id='contact-form' method='POST'><input type='hidden' name='form-name' value='contactForm'/>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <!--name-->
                            <input type="text" class="form-control con-validate" id="contact-name" placeholder="Name" minlength=3>
                        </div>
                        <div class="col-md-6 form-group">
                            <!--email-->
                            <input type="email" class="form-control con-validate" id="contact-email" placeholder="Email">
                        </div>
                        <div class="col-md-12 form-group">
                            <!--message box-->
                            <textarea class="form-control con-validate" id="contact-message" placeholder="How can we help you?" rows=6></textarea>
                        </div>
                        <div class="col-md-12 text-center">
                            <!--contact button-->
                            <button id="contact-submit" class="mt-30 main-btn">
                                Send Message
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!--Contact Section End-->
