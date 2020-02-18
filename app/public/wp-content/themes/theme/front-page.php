<?php get_header();?>

<?php $jumbotron = get_field('jumbotron');?>
<?php $catalogue = get_field('catalogue');?>

        <div class="container-fluid">

<section class="jumbotron">
    <div class="row top">
        <div class="jumbotron__msg col-md-6">
            <div class="jumbotron__msg--text my-auto">
                <p class="jumbotron__msg--text--head"><?php echo $jumbotron['big_title'];?></p>
                <p class="jumbotron__msg--text--minor"><?php echo $jumbotron['small_title'];?></p>
            </div>
            <div class="jumbotron__btn btn">
                <p><?php echo $jumbotron['button_text'];?></p>
            </div>
        </div>

        <div class="jumbotron__space col-md-6"></div>

        <div class="jumbotron__img"></div>
    </div>

    <div class="row bottom">
        <div class="slider">
            <div class="slider__image">
                <img src="<?php bloginfo( 'template_directory' )?>/src/img/jumbo_slider_1.jpg" alt="">
            </div>
            <div class="slider__image">
                <img src="<?php bloginfo( 'template_directory' )?>/src/img/jumbo_slider_2.jpg" alt="">
            </div>
            <div class="slider__image">
                <img src="<?php bloginfo( 'template_directory' )?>/src/img/jumbo_slider_3.jpg" alt="">
            </div>
            <div class="slider__image">
                <img src="<?php bloginfo( 'template_directory' )?>/src/img/jumbo_slider_4.jpg" alt="">
            </div>
        </div>
    </div>
</section>


<!-- To update / Change slider to match mockup -->


<section class="catalogue">
    <div class="header">
        <img src="<?php bloginfo( 'template_directory' )?>/src/img/Line_blue.svg" alt="header border">
        <div class="header__text my-auto">
            <h1><?php echo $catalogue['catalogue_header'];?></h1>
            <p><?php echo $catalogue['catalogue_header_text']['cat_first_line'];?><br /> <?php echo $catalogue['catalogue_header_text']['cat_second_line'];?> <span><?php echo $catalogue['highlight_text'];?></span>
            </p>
        </div>
    </div>
    <div class="row">

        <div class="catalogue__menu col-lg-3">
            <div class="menu__item">
                <div id="cushion" class="menu__item--row active">
                    <p>Cushion</p>
                </div>
                <div id="curtain" class="menu__item--row">
                    <p>Curtains</p>
                </div>
                <div id="artwork" class="menu__item--row">
                    <p>Artwork</p>
                </div>
                <div id="bedsheets" class="menu__item--row">
                    <p>Bedsheets</p>
                </div>
            </div>
        </div>

        <div class="catalogue__items col-lg-7">
            <div class="stock">
                <h2 class="stock__header">Latest</h2>

                <div id="sliderCata" class="slider__catalogue">
                    <div class="slider__image--catalogue">
                        <img src="<?php bloginfo( 'template_directory' )?>/src/img/sofa_1.jpg" alt="">
                    </div>
                    <div class="slider__image--catalogue">
                        <img src="<?php bloginfo( 'template_directory' )?>/src/img/sofa_2.jpg" alt="">
                    </div>
                    <div class="slider__image--catalogue">
                        <img src="<?php bloginfo( 'template_directory' )?>/src/img/sofa_3.jpg" alt="">
                    </div>
                    <div class="slider__image--catalogue">
                        <img src="<?php bloginfo( 'template_directory' )?>/src/img/sofa_4.jpg" alt="">
                    </div>
                </div>
            </div>

            <div class="stock">
                <h2 class="stock__header">Popular</h2>

                <div id="sliderJumbo" class="slider__catalogue">
                    <div class="slider__image--catalogue">
                        <img src="<?php bloginfo( 'template_directory' )?>/src/img/bedroom_1.jpg" alt="">
                    </div>
                    <div class="slider__image--catalogue">
                        <img src="<?php bloginfo( 'template_directory' )?>/src/img/bedroom_2.jpg" alt="">
                    </div>
                    <div class="slider__image--catalogue">
                        <img src="<?php bloginfo( 'template_directory' )?>/src/img/bedroom_3.jpg" alt="">
                    </div>
                    <div class="slider__image--catalogue">
                        <img src="<?php bloginfo( 'template_directory' )?>/src/img/bedroom_4.jpg" alt="">
                    </div>
                </div>
            </div>

            <div class="see_all">
                <a href="#" class="see_all__link">See all</a>
            </div>
        </div>
    </div>
</section>
<div class="section_break">

</div>

<section class="contact">
    <div class="row">
        <div class="header">
            <img src="<?php bloginfo( 'template_directory' )?>/src/img/Line_blue.svg" alt="header border">
            <div class="header__text my-auto">
                <h1>Contact</h1>
                <p>Get in touch with us by <span>filling the form</span><br />or <span>visisting our
                        stores</span>
                </p>
            </div>
        </div>

        <div class="social_media ml-auto my-auto">
            <img src="<?php bloginfo( 'template_directory' )?>/src/img/instagram.svg" alt="Instagram link" class="social_media__icons">
            <img src="<?php bloginfo( 'template_directory' )?>/src/img/twitter.svg" alt="Twitter link" class="social_media__icons">
            <img src="<?php bloginfo( 'template_directory' )?>/src/img/facebook.svg" alt="Facebook link" class="social_media__icons">
        </div>
    </div>

    <div class="contact__grid">
        <!-- Form -->
        <div class="form">
            <h2>Send us a message</h2>

            <form action="#" class="form ">

                <label for="email">Email</label>
                <input type="email" name="email" id="email">

                <label for="subject">Subject</label>
                <input type="text" name="subject" id="subject">

                <label for="message">Message</label>
                <textarea name="message" id="message" cols="30" rows="10"></textarea>

                <div class="form__btn btn">
                    <p> Send</p>
                </div>
            </form>

        </div>

        <div class="info">
            <div class="info__header row">

                <div class="info__item col-lg-6">
                    <!-- Call us -->
                    <div class="tag">
                        <img src="<?php bloginfo( 'template_directory' )?>/src/img/call.svg" alt="Phone Icon">
                        <div class="tag__info">
                            <div class="line_cyan__short"></div>
                            <div>

                                <h3>Call or whatsapp</h3>
                                <p>0722 461012</p>
                                <p>0733 714380</p>

                            </div>
                        </div>
                    </div>

                    <!-- physical location -->
                </div>

                <div class="info__item col-lg-6">
                    <!-- Call us -->
                    <div class="tag">
                        <img src="<?php bloginfo( 'template_directory' )?>/src/img/pin.svg" alt="Pin icon">
                        <div class="tag__info">
                            <div class="line_cyan__long"></div>
                            <div>

                                <h3>Our physical location</h3>
                                <p>Ground floor</p>
                                <p>City mall</p>
                                <p>Nyali</p>
                                <p>Mombasa</p>

                            </div>
                        </div>
                    </div>

                    <!-- physical location -->
                </div>

            </div>

            <script>
                // Initialize and add the map
                function initMap() {
                // The location of City Mall
                var uluru = {lat: -4.019433, lng: 39.721098};
                // The map, centered at City Mall
                var map = new google.maps.Map(
                    document.getElementById('map'), {zoom: 18, center: uluru});
                // The marker, positioned at Uluru
                var marker = new google.maps.Marker({position: uluru, map: map});
                }
            </script>
            <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCZhcq7rb3Q-aJ34SMddOMoNxnToodGjHs&callback=initMap">
            </script>
        </div>
        <!-- div.map to embed the google map into the website -->
        <div id='map' class="map"></div>

        <!-- Other contact info -->
    </div>
</section>
</div>

<?php get_footer();?>