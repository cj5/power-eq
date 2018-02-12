<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Underscores
 */

 /*
Template Name: Custom
*/

get_header(); ?>

<section id="banner">
	<div class="banner-filter"></div>
	<div class="banner-img-fill"></div>
	<?php the_post_thumbnail(); ?>
	<div class="banner-caption">
		<div class="container">
			<h1><?php echo the_title(); ?></h1>
		</div>
	</div>
</section>
<section id="content-area">
	<div class="container">
		<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
			<?php the_content(); ?>
		<?php endwhile; else : ?>
			<p><?php esc_html_e( 'Sorry, no posts matched your criteria.' ); ?></p>
		<?php endif; ?>
	</div>
</section>

<?php

get_footer();
