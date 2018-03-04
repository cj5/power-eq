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
			<div class="content ib">
				<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
				<?php the_content(); ?>
				<?php endwhile; else : ?>
					<p><?php esc_html_e( 'Sorry, no posts matched your criteria.' ); ?></p>
				<?php endif; ?>
		</div>
		<div class="sidebar ib">
			<h3>Equipment</h3>
			<ul>
				<li><a href="http://">Boilers</a></li>
				<li><a href="http://">Compressors</a></li>
				<li><a href="http://">Pumps</a></li>
				<li><a href="http://">Specialty</a></li>
			</ul>

			<h3 class="no-margin">Partners</h3>
			<!-- OWL CAROUSEL -->
			<div class="owl-carousel owl-sidebar">
				<div class="item">
					<a href="" target="_blank">
						<img src="/wp-content/uploads/2018/02/cleaver-brooks.png" alt="">
					</a>
				</div>
				<div class="item">
					<a href="" target="_blank">
						<img src="/wp-content/uploads/2018/02/armstrong.png" alt="">
					</a>
				</div>
				<div class="item">
					<a href="" target="_blank">
						<img src="/wp-content/uploads/2018/02/viking-pumps.png" alt="">
					</a>
				</div>
				<div class="item">
					<a href="" target="_blank">
						<img src="/wp-content/uploads/2018/02/gardner-denver.png" alt="">
					</a>
				</div>
    	</div>
		</div>

		<div class="tablet-carousel">
			<h3>Partners</h3>
			<!-- OWL CAROUSEL -->
			<div class="owl-carousel owl-tablet">
				<div class="item">
					<a href="" target="_blank">
						<img src="/wp-content/uploads/2018/02/cleaver-brooks.png" alt="">
					</a>
				</div>
				<div class="item">
					<a href="" target="_blank">
						<img src="/wp-content/uploads/2018/02/armstrong.png" alt="">
					</a>
				</div>
				<div class="item">
					<a href="" target="_blank">
						<img src="/wp-content/uploads/2018/02/viking-pumps.png" alt="">
					</a>
				</div>
				<div class="item">
					<a href="" target="_blank">
						<img src="/wp-content/uploads/2018/02/gardner-denver.png" alt="">
					</a>
				</div>
			</div>
			</div>

	</div>
</section>

<?php

get_footer();
