<?php

add_action( 'wp_enqueue_scripts', 'enqueue_parent_styles' );

function enqueue_parent_styles() {
   wp_enqueue_style( 'parent-style', get_template_directory_uri().'/style.css' );
}

// add_filter('get_search_form', 'my_search_form');

function my_scripts_method() {
  wp_enqueue_script(
      'custom-script',
      get_stylesheet_directory_uri() . '/js/scripts.js',      
      array( 'jquery' )
  );
}
add_action( 'wp_enqueue_scripts', 'my_scripts_method' );

function owl() {
  wp_enqueue_script(
      'custom-script',
      get_stylesheet_directory_uri() . '/js/owl.carousel.min.js',      
      array( 'jquery' )
  );
}
add_action( 'wp_enqueue_scripts', 'owl' );

/**
 * Enable ACF 5 early access
 * Requires at least version ACF 4.4.12 to work
 */
define('ACF_EARLY_ACCESS', '5');

?>