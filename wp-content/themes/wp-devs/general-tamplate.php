<<<<<<< HEAD:wp-content/themes/wp-devs/general-template.php
<?php 
/*Template Name: General Template
*/
=======
<?php
/*arquivo criado para configuração geral das páginas no site */
>>>>>>> 7506af9453ea4cc0d9c2a219b25f8616ef58e06b:wp-content/themes/wp-devs/general-tamplate.php
?>
<?php get_header();?>
    
    <div id="Content" class="site-content">
        <div id= "primary" class="content-area">
          <main id= "main" class= "site-main">
<<<<<<< HEAD:wp-content/themes/wp-devs/general-template.php
               <div class="container">
                    <div class="general-template">
=======
            <section class="hero">
                 Hero
            </section>
            <section class="services">
                 Services
            </section>
            <section class= "home-blog">
               <div class="container">
                    <div class="blog_items">

>>>>>>> 7506af9453ea4cc0d9c2a219b25f8616ef58e06b:wp-content/themes/wp-devs/general-tamplate.php
                         <?php 
                              if (have_posts()):
                                   while( have_posts()) : the_post();
                                   ?>
                                        <article>
<<<<<<< HEAD:wp-content/themes/wp-devs/general-template.php
                                             <h1><?php the_title(); ?></h1>
=======
                                             <h2><?php the_title(); ?></h2>
                                             <div class="Meta-info"> 
                                                  <p> Posted in <?php echo get_the_date(); ?>by <?php 
                                                  the_author_posts_link(); ?> </p>
                                                  <p>Categories: <?php the_category(  '  '); ?> </p>
                                                  <p> Tags: <?php the_tags('', ','); ?> </p>
                                            </div>
>>>>>>> 7506af9453ea4cc0d9c2a219b25f8616ef58e06b:wp-content/themes/wp-devs/general-tamplate.php
                                            <?php the_content(); ?>
                                        </article>
                                     <?php
                                       endwhile;
                                   else:  ?>
                                            <p>Nothing yet to be display</p>
                                   <?php endif; ?>
                                   </div>
                               </div>

                          </section>
                    </main>
               </div>
          </div>
<<<<<<< HEAD:wp-content/themes/wp-devs/general-template.php
<?php get_footer();?>
=======
<?php get_footer();?> */
>>>>>>> 7506af9453ea4cc0d9c2a219b25f8616ef58e06b:wp-content/themes/wp-devs/general-tamplate.php
