<?php get_header(); ?>

<?php
$jumbotron = get_field('jumbotron');
$catalogue = get_field('catalogue');
$contact = get_field('contact');
$links = get_field("social_links");

$catalogue_header_text = $catalogue['catalogue_header_text'];
$cat_header_1 = '';
$cat_header_2 = '';
// foreach($catalogue['catalogue_header_text'] as $value) {
//     // $cat_header_1 = $value['cat_first_line'];
//     // $cat_header_2 =  $value['cat_second_line'];

//     // echo($value);
//     echo("This is a test variable");
//   }
$cat_header_1 = $catalogue_header_text['cat_first_line'];
?>

<div class="container-fluid">
    <div class="container-fluid">
        <section class="jumbotron" id="jumbotron">
            <div class="row top">
                <div class="jumbotron__msg col-md-6">
                    <div class="jumbotron__msg--text m-auto">
                        <p class="jumbotron__msg--text--head"><?php echo $jumbotron['big_title']; ?></p>
                        <!-- <p class="jumbotron__msg--text--minor">
                        <?php
                        // echo $jumbotron['small_title'];
                        ?>
                        </p> -->
                        <p class="jumbotron__msg--text--minor">
                            <?php
                            echo ($catalogue['catalogue_header_text']['cat_first_line']);
                            ?>
                        </p>

                    </div>
                    <div class="jumbotron__btn btn">
                        <p><?php echo $jumbotron['button_text']; ?></p>
                    </div>
                </div>

                <div class="jumbotron__space col-md-6"></div>
                <div class="jumbotron__img"></div>
            </div>

        </section>

        <div class="row bottom">
            <div class="slider">
                <div class="slider__image">
                    <img src="<?php bloginfo('template_directory') ?>/src/img/jumbo_slider_1.jpg" alt="">
                </div>
                <div class="slider__image">
                    <img src="<?php bloginfo('template_directory') ?>/src/img/sofa_3.jpg" alt="">
                </div>
                <div class="slider__image">
                    <img src="<?php bloginfo('template_directory') ?>/src/img/jumbo_slider_3.jpg" alt="">
                </div>
                <div class="slider__image">
                    <img src="<?php bloginfo('template_directory') ?>/src/img/jumbo_slider_4.jpg" alt="">
                </div>
                <div class="slider__image">
                    <img src="<?php bloginfo('template_directory') ?>/src/img/jumbo_slider_3.jpg" alt="">
                </div>
                <div class="slider__image">
                    <img src="<?php bloginfo('template_directory') ?>/src/img/jumbo_slider_4.jpg" alt="">
                </div>
            </div>
        </div>

        <!-- To update / Change slider to match mockup -->

        <section class="catalogue" id="catalogue">
            <div class="header">
                <img src="<?php bloginfo('template_directory') ?>/src/img/Line_blue.svg" alt="header border">
                <div class="header__text my-auto">
                    <h1><?php echo $catalogue['catalogue_header']; ?></h1>
                    <p><?php echo $cat_header_1; ?>Browse through our catalogue section<br /><?php echo $cat_header_2; ?> to see what we have <span><?php echo $catalogue['catalogue_header_text']['second_line_highlight']; ?>in
                            stock
                        </span>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="catalogue__menu col-lg-3 my-auto">
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

                <div class="catalogue__items col-lg-7 offset-lg-2">
                    <div class="stock">
                        <h2 class="stock__header">Latest</h2>

                        <div id="sliderCata" class="slider__catalogue">
                            <div class="slider__image--catalogue">
                                <img src="<?php bloginfo('template_directory') ?>/src/img/sofa_1.jpg" alt="">
                            </div>
                            <div class="slider__image--catalogue">
                                <img src="<?php bloginfo('template_directory') ?>/src/img/sofa_2.jpg" alt="">
                            </div>
                            <div class="slider__image--catalogue">
                                <img src="<?php bloginfo('template_directory') ?>/src/img/sofa_3.jpg" alt="">
                            </div>
                            <div class="slider__image--catalogue">
                                <img src="<?php bloginfo('template_directory') ?>/src/img/sofa_4.jpg" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="stock">
                        <h2 class="stock__header">Popular</h2>

                        <div id="sliderCata" class="slider__catalogue">
                            <div class="slider__image--catalogue">
                                <img src="<?php bloginfo('template_directory') ?>/src/img/bedroom_1.jpg" alt="">
                            </div>
                            <div class="slider__image--catalogue">
                                <img src="<?php bloginfo('template_directory') ?>/src/img/bedroom_2.jpg" alt="">
                            </div>
                            <div class="slider__image--catalogue">
                                <img src="<?php bloginfo('template_directory') ?>/src/img/bedroom_3.jpg" alt="">
                            </div>
                            <div class="slider__image--catalogue">
                                <img src="<?php bloginfo('template_directory') ?>/src/img/bedroom_4.jpg" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="see_all">
                        <a href="/catalogue" class="see_all__link">See all</a>
                    </div>
                </div>
            </div>
        </section>

    </div>
</div>

<div class="section_break"></div>

<div class="container-fluid">
    <section class="contact" id="contact">
        <div class="row">
            <div class="header">
                <img src="<?php bloginfo('template_directory') ?>/src/img/Line_blue.svg" alt="header border">
                <div class="header__text my-auto">
                    <h1>Contact</h1>
                    <p>Get in touch with us by <span>filling the form</span><br />or <span>visisting our
                            stores</span>
                    </p>
                </div>
            </div>

            <div class="social_media ml-auto my-auto">
                <img src="<?php bloginfo('template_directory') ?>/src/img/instagram.svg" alt="Instagram link" class="social_media__icons">
                <img src="<?php bloginfo('template_directory') ?>/src/img/twitter.svg" alt="Twitter link" class="social_media__icons">
                <img src="<?php bloginfo('template_directory') ?>/src/img/facebook.svg" alt="Facebook link" class="social_media__icons">
            </div>
        </div>

        <div class="contact__grid">
            <!-- Form -->
            <div class="form">
                <h2>Send us a message</h2>

                <form action="wp-content/themes/theme/mail.php" method="POST" class="form ">

                    <label for="email">Email</label>
                    <input type="email" name="email" id="email">

                    <label for="subject">Subject</label>
                    <input type="text" name="subject" id="subject">

                    <label for="message">Message</label>
                    <textarea name="message" id="message" cols="30" rows="10"></textarea>

                    <div class="form__btn btn">
                        <input type="submit" value="Send">
                    </div>
                </form>

            </div>

            <div class="info">
                <div class="info__header row">

                    <div class="info__item col-lg-6">
                        <!-- Call us -->
                        <div class="tag">
                            <img src="<?php bloginfo('template_directory') ?>/src/img/call.svg" alt="Phone Icon">
                            <div class="tag__info">
                                <div class="line_cyan__long"></div>
                                <div>

                                    <p class="tag__info--header">Call or whatsapp</p>
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
                            <img src="<?php bloginfo('template_directory') ?>/src/img/pin.svg" alt="Pin icon">
                            <div class="tag__info">
                                <div class="line_cyan__long"></div>
                                <div>

                                    <p class="tag__info--header">Our physical location</p>
                                    <p>Ground floor, City Mall</p>
                                    <p>Nyali, Mombasa</p>

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
                        var nyali = {
                            lat: -4.019433,
                            lng: 39.721098
                        };
                        // The map, centered at City Mall
                        var map = new google.maps.Map(
                            document.getElementById('map'), {
                                zoom: 18,
                                center: nyali
                            });
                        // The marker, positioned at nyali
                        var marker = new google.maps.Marker({
                            position: nyali,
                            map: map
                        });
                    }
                </script>
                <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCZhcq7rb3Q-aJ34SMddOMoNxnToodGjHs&callback=initMap">
                </script>
            </div>
            <!-- div.map to embed the google map into the website -->
            <div id='map' class="map"></div>

            <!-- Other contact info -->
        </div>
    </section>
</div>

<?php get_footer(); ?>