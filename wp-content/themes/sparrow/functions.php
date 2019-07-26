<?php

add_action('wp_enqueue_scripts', 'style_thems');
add_action('wp_footer', 'donwald_scripts');
add_action('after_setup_theme', 'myMenu');
add_action('widgets_init', 'reg_sid');
add_filter( 'document_title_separator', 'filter_function_name' );
function filter_function_name( $sep ){
    $sep = ' | ';

    return $sep;
}
add_action( 'init', 'register_post_types' );
function register_post_types(){
    register_post_type('portfolio', array(
        'label'  => null,
        'labels' => array(
            'name'               => 'Портфолио', // основное название для типа записи
            'singular_name'      => 'Портфолио', // название для одной записи этого типа
            'add_new'            => 'Добавить работу', // для добавления новой записи
            'add_new_item'       => 'Добавление работы', // заголовка у вновь создаваемой записи в админ-панели.
            'edit_item'          => 'Редактирование работы', // для редактирования типа записи
            'new_item'           => 'Новое работа', // текст новой записи
            'view_item'          => 'Смотреть работу', // для просмотра записи этого типа.
            'search_items'       => 'Искать работу в портфолио', // для поиска по этим типам записи
            'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
            'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
            'parent_item_colon'  => '', // для родителей (у древовидных типов)
            'menu_name'          => 'Портфолио', // название меню
        ),
        'description'         => 'Это наши работы',
        'public'              => true,
        'publicly_queryable'  => true, // зависит от public
        'exclude_from_search' => true, // зависит от public
        'show_ui'             => true, // зависит от public
        'show_in_menu'        => true, // показывать ли в меню адмнки
        'show_in_admin_bar'   => true, // по умолчанию значение show_in_menu
        'show_in_nav_menus'   => true, // зависит от public
        'show_in_rest'        => true, // добавить в REST API. C WP 4.7
        'rest_base'           => null, // $post_type. C WP 4.7
        'menu_position'       => 4,
        'menu_icon'           => 'dashicons-format-gallery', 
        //'capability_type'   => 'post',
        //'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
        //'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
        'hierarchical'        => false,
        'supports'            => array('title','editor', 'author', 'thumbnail', 'excerpt'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
        'taxonomies'          => array(),
        'has_archive'         => false,
        'rewrite'             => true,
        'query_var'           => true,
    ) );
}
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
    add_theme_support( 'post-thumbnails', array( 'post', 'portfolio' ) );
    add_theme_support( 'title-tag' );
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

