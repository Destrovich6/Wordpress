<?php

add_action('wp_enqueue_scripts', 'style_thems');
add_action('wp_footer', 'donwald_scripts');
add_action('after_setup_theme', 'myMenu');
add_action('widgets_init', 'reg_sid');

function reg_sid() {
    register_sidebar(array(
        'name'          => 'Right Sidebar',
        'id'            => "right sidebar",
        'description'   => 'Наш сайдбар',
        'before_widget' => '<div class="widget %2$s">',
        'after_widget'  => "</div>\n",
        'before_title'  => '<h5 class="widgettitle">',
        'after_title'   => "</h5>\n",
    ));
}

function myMenu() {
    register_nav_menu('top', 'Меню в шапке');
    register_nav_menu('bottom', 'Меню в подвале');
    add_theme_support( 'post-thumbnails', array( 'post' ) );
    add_filter( 'excerpt_length', function(){
        return 39;
    } );
    add_filter( 'excerpt_more', 'new_excerpt_more' );
    function new_excerpt_more( $more ){
        global $post;
        return '. <a class="more-link" href="'. get_permalink($post) . '">Read More<i class="fa fa-arrow-circle-o-right"></i></a>';
    }
}
function style_thems()
{
	wp_enqueue_style('style', get_stylesheet_uri());
	wp_enqueue_style( 'default', get_template_directory_uri() . "/assets/css/default.css");
	wp_enqueue_style( 'lay', get_template_directory_uri() . "/assets/css/layout.css");
	wp_enqueue_style( 'media-queir', get_template_directory_uri() . "/assets/css/media-queries.css");
    wp_enqueue_script('modernizr', get_template_directory_uri() . "/assets/js/modernizr.js");
}
function donwald_scripts() {
    wp_enqueue_script( 'jquery' );
    wp_deregister_script( 'jquery-core' );
    wp_register_script( 'jquery-core', '//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js');
    wp_enqueue_script( 'jquery' );
    wp_enqueue_script('slider', get_template_directory_uri() . "/assets/js/jquery.flexslider.js");
	wp_enqueue_script('init', get_template_directory_uri() . "/assets/js/init.js");
	wp_enqueue_script('dt', get_template_directory_uri() . "/assets/js/doubletaptogo.js");

}

