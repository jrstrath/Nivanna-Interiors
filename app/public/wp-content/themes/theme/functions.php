<?php
function load_stylesheets()
{

    // Bootstrap
    wp_register_style('bootstrap', get_template_directory_uri() . '/src/css/vendor/bootstrap.min.css', array(), 1, 'all');
    wp_enqueue_style('bootstrap');

    // Light Slider
    wp_register_style('slider', get_template_directory_uri() . '/src/css/vendor/slick.css', array(), 1, 'all');
    wp_enqueue_style('slider');

    // Main style
    wp_register_style('main', get_template_directory_uri() . '/src/css/main.css', array(), 1, 'all');
    wp_enqueue_style('main');
}
add_action('wp_enqueue_scripts', 'load_stylesheets');


// Load scripts
function load_js()
{
    $dependencies = array('jquery');
    // Bootstrap
    wp_register_script('bootstrap', get_template_directory_uri() . '/src/js/vendor/bootstrap.min.js', array(), 1, 1, 1);
    wp_enqueue_script('bootstrap');

    // Light slider
    wp_register_script('slick', get_template_directory_uri() . '/js/vendor/slick.js', $dependencies, 1, 1, 1);
    wp_enqueue_script('slick');

    // Main
    wp_enqueue_script('main_js', get_template_directory_uri() . '/js/main.js', $dependencies);
}

add_action('wp_enqueue_scripts', 'load_js');
