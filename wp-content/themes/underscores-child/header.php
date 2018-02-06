<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Underscores
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="http://gmpg.org/xfn/11">

	<?php wp_head(); ?>
	
	<link rel=icon href=/wp-content/uploads/2018/02/favicon.png type="image/png">

	<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'underscores' ); ?></a>

	<header id="masthead" class="site-header">
		<div class="header-top">
			<div class="container">
				<div class="header-left">
					<a href="/"><img src="/wp-content/uploads/2018/02/lg-logo.png" alt=""></a>
				</div>
				<div class="header-middle">
					<div class="abs-wrapper">
						<img src="/wp-content/uploads/2018/02/24-7.png" alt="">
						<?php get_search_form(); ?>
					</div>
				</div>
				<div class="header-right">
					<img src="/wp-content/uploads/2018/02/twp-logo.png" alt="">
				</div>
			</div>
		</div>
		<nav class="main-nav">
			<div class="container">
				<?php
					wp_nav_menu( array(
						'theme_location' => 'menu-1',
						'menu_id'        => 'primary-menu',
					) );
				?>	
			</div>
		</nav>
	</header><!-- #masthead -->

	<div id="content" class="site-content">
