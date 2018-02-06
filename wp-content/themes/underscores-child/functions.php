<?php

add_action( 'wp_enqueue_scripts', 'enqueue_parent_styles' );

function enqueue_parent_styles() {
   wp_enqueue_style( 'parent-style', get_template_directory_uri().'/style.css' );
}

add_filter('get_search_form', 'my_search_form');

function my_scripts_method() {
  wp_enqueue_script(
      'custom-script',
      get_stylesheet_directory_uri() . '/js/scripts.js',
      array( 'jquery' )
  );
}
add_action( 'wp_enqueue_scripts', 'my_scripts_method' );

?>