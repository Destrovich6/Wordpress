<?php
/*
Template Name: Блог
*/
?>

<?php get_header();?>

<!-- Page Title
  ================================================== -->
<div id="page-title">

    <div class="row">

        <div class="ten columns centered text-center">
            <h1>Our Blog<span>.</span></h1>

            <p>Aenean condimentum, lacus sit amet luctus lobortis, dolores et quas molestias excepturi
                enim tellus ultrices elit, amet consequat enim elit noneas sit amet luctu. </p>
        </div>

    </div>

</div> <!-- Page Title End-->
<!-- Content
================================================== -->
<div class="content-outer">

    <div id="page-content" class="row">

        <div id="primary" class="eight columns">

           <?php
           $args = array(
                    'orderby'      => 'name',
                    'order'        => 'ASC',
                    'posts_per_page' => '20',
                    'post_type' => 'post',
                    'post_status' => 'publish',
                );
                $query = new WP_Query($args);
                 if ($query->have_posts()) {
                    while ($query->have_posts()) {
                        $query->the_post(); ?>
                        <article class="post">

                            <div class="entry-header cf">

                                <h1><a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h1>

                                <p class="post-meta">

                                    <time class="date" datetime="2014-01-14T11:24"><?php the_date('M j, Y'); ?></time>
                                    /
                                    <span class="categories">
                                     <a href="#">Design</a> /
                                     <a href="#">User Inferface</a> /
                                     <a href="#">Web Design</a>
                                     </span>

                                </p>

                            </div>

                            <div class="post-thumb">
                                <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><?php the_post_thumbnail('post_thumb'); ?></a>
                            </div>

                            <div class="post-content">

                                <?php do_excerpt(get_the_content(), 61); ?>

                            </div>

                        </article> <!-- post end -->

                    <?php }
                    wp_reset_postdata();

        } ?> 

            <!-- Pagination -->
            <nav class="col full pagination">
                <ul>
                    <li><span class="page-numbers prev inactive">Prev</span></li>
                    <li><span class="page-numbers current">1</span></li>
                    <li><a href="#" class="page-numbers">2</a></li>
                    <li><a href="#" class="page-numbers">3</a></li>
                    <li><a href="#" class="page-numbers">4</a></li>
                    <li><a href="#" class="page-numbers">5</a></li>
                    <li><a href="#" class="page-numbers">6</a></li>
                    <li><a href="#" class="page-numbers">7</a></li>
                    <li><a href="#" class="page-numbers">8</a></li>
                    <li><a href="#" class="page-numbers">9</a></li>
                    <li><a href="#" class="page-numbers next">Next</a></li>
                </ul>
            </nav>

        </div> <!-- Primary End-->

        <div id="secondary" class="four columns end">

        <?php get_sidebar(); ?>

        </div> <!-- Secondary End-->

    </div>

</div> <!-- Content End-->

<!-- Tweets Section
================================================== -->
<section id="tweets">

    <div class="row">

        <div class="tweeter-icon align-center">
            <i class="fa fa-twitter"></i>
        </div>

        <ul id="twitter" class="align-center">
            <li>
               <span>
               This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.
               Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum
               <a href="#">http://t.co/CGIrdxIlI3</a>
               </span>
                <b><a href="#">2 Days Ago</a></b>
            </li>
            <!--
            <li>
               <span>
               This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.
               Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum
               <a href="#">http://t.co/CGIrdxIlI3</a>
               </span>
               <b><a href="#">3 Days Ago</a></b>
            </li>
            -->
        </ul>

        <p class="align-center"><a href="#" class="button">Follow us</a></p>

    </div>

</section> <!-- Tweets Section End-->
<?php get_footer();?>