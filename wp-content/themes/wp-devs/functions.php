<?php
  
 
  
function wpdevs_load_scripts(){
   wp_enqueue_style(
      'wpdevs-style',
      get_stylesheet_uri(),
      array(),
      filemtime
      (get_template_directory() . '/style.css'),
      'all'
   );
   wp_enqueue_style('goolge-fonts','https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&family=Volkhov:wght@700&display=swap', 
      array(),
      null
   );
   wp_enqueue_script( 'dropdown', get_template_directory_uri() .'/assets/js/dropdown.js', array(), '1.0', true );

  

   

   wp_enqueue_style(
      'wp-devs-css-reset',
      get_template_directory_uri() . '/assets/css/reset.css', 
      array(),
      '1.0.0',
   );

   wp_enqueue_style(
      'wp-devs-css-home',
      get_template_directory_uri() . '/assets/css/home.css', 
      array(),
      '1.0.0',
   );

   wp_enqueue_style(
      'wp-devs-css-footer',
      get_template_directory_uri() . '/assets/css/footer.css', 
      array(),
      '1.0.0',
   );

}
add_action( 'wp_enqueue_scripts','wpdevs_load_scripts' ); 

register_nav_menus(
      array(
         'wp_devs_main_menu' => 'Main Menu',
         'wp_devs_footer_menu' =>'Footer Menu'
      )
   );     

add_theme_support( 'custom-logo' );
add_theme_support('post-thumbnails');

add_action('init', function () {
   register_nav_menu('header-menu', __('Header Menu'));
});