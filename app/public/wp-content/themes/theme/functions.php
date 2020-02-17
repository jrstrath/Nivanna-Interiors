<?php
    function load_stylesheets(){

        // Light Slider
        wp_register_style( 'slider', get_template_directory_uri(  ) . '/src/css/vendor/slick.css', array(), 1, 'all');
        wp_enqueue_style( 'slider' );

        // Main style
        wp_register_style( 'main', get_template_directory_uri(  ) . '/src/css/main.css', array(), 1, 'all');
        wp_enqueue_style( 'main' );

    }
    add_action( 'wp_enqueue_scripts', 'load_stylesheets' );


    // Load scripts
    function load_js(){
        // Light slider
        wp_register_script( 'slick', get_template_directory_uri() . '/src/js/vendor/slick.js', array(), 1, 1, 1 );
        wp_enqueue_script( 'slick' );

        // Main
        wp_register_script( 'main', get_template_directory_uri() . '/src/js/main.js', array(), 1, 1, 1 );
        wp_enqueue_script( 'main' );
    }

?>
