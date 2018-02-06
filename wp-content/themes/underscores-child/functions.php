<?php

add_action( 'wp_enqueue_scripts', 'enqueue_parent_styles' );

function enqueue_parent_styles() {
   wp_enqueue_style( 'parent-style', get_template_directory_uri().'/style.css' );
}

add_filter('get_search_form', 'my_search_form');

function my_search_form($text) {
    $text = str_replace('value="Search"', 'value="Go"', $text);
    return $text; 
}

?>