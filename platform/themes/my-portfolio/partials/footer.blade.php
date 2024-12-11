<!--Footer Start-->
<footer class="pt-50 pb-50">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-3 col-sm-6">
                <!--Contant Item-->
                <div class="contact-info">
                    <h5>Kalvin</h5>
                    <p>lorem Ipsum donor sit.</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <!--Contant Item-->
                <div class="contact-info">
                    <h5>Phone No.</h5>
                    <p>(+1) 123 456 7890</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <!--Contant Item-->
                <div class="contact-info">
                    <h5>Email</h5>
                    <p>info@example.com</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <!--Contant Item-->
                <div class="contact-info">
                    <h5>Address</h5>
                    <p>123 lorem ipsum New York, USA.</p>
                </div>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-md-12">
                <hr>
                <p class="copy pt-30">
                    Kalvin &copy; 2021. All Right Reserved, Designed By Cosmos-Themes.
                </p>
            </div>
        </div>
    </div>
</footer>
<!--Footer End-->
{!! Theme::footer() !!}
<script>
    //Particles
    particlesJS.load('particles-js', '{{ Theme::asset()->url('js/index-particles1.json') }}', function () {
        console.log('callback - particles.js config loaded');
    });
</script>

</body>
</html>
