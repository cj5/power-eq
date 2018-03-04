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

	<link rel="stylesheet" href="/wp-content/themes/underscores-child/owlcarousel/owl.carousel.min.css">
	<link rel="stylesheet" href="/wp-content/themes/underscores-child/owlcarousel/owl.theme.default.min.css">

	<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700|Roboto:300,400,500,700,900" rel="stylesheet">
</head>

<!-- SVG definitions -->
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="hide">
  <defs>
		<symbol id="icon-fire" viewBox="0 0 32 32">
			<path d="M10.031 32c-2.133-4.438-0.997-6.981 0.642-9.376 1.795-2.624 2.258-5.221 2.258-5.221s1.411 1.834 0.847 4.703c2.493-2.775 2.963-7.196 2.587-8.889 5.635 3.938 8.043 12.464 4.798 18.783 17.262-9.767 4.294-24.38 2.036-26.027 0.753 1.646 0.895 4.433-0.625 5.785-2.573-9.759-8.937-11.759-8.937-11.759 0.753 5.033-2.728 10.536-6.084 14.648-0.118-2.007-0.243-3.392-1.298-5.312-0.237 3.646-3.023 6.617-3.777 10.27-1.022 4.946 0.765 8.568 7.555 12.394z"></path>
		</symbol>
		<symbol id="icon-meter" viewBox="0 0 32 32">
			<path d="M16 2c8.837 0 16 7.163 16 16 0 6.025-3.331 11.271-8.25 14h-15.499c-4.92-2.729-8.25-7.975-8.25-14 0-8.837 7.163-16 16-16zM25.060 27.060c2.42-2.42 3.753-5.637 3.753-9.060h-2.813v-2h2.657c-0.219-1.406-0.668-2.755-1.33-4h-3.327v-2h2.009c-0.295-0.368-0.611-0.722-0.949-1.060-1.444-1.444-3.173-2.501-5.060-3.119v2.178h-2v-2.658c-0.656-0.102-1.324-0.155-2-0.155s-1.344 0.053-2 0.155v2.658h-2v-2.178c-1.887 0.617-3.615 1.674-5.060 3.119-0.338 0.338-0.654 0.692-0.949 1.060h2.009v2h-3.327c-0.662 1.245-1.111 2.594-1.33 4h2.657v2h-2.813c0 3.422 1.333 6.64 3.753 9.060 0.335 0.335 0.685 0.648 1.049 0.94h6.011l1.143-16h1.714l1.143 16h6.011c0.364-0.292 0.714-0.606 1.049-0.94z"></path>
		</symbol>
		<symbol id="icon-cog" viewBox="0 0 32 32">          
			<path d="M29.181 19.070c-1.679-2.908-0.669-6.634 2.255-8.328l-3.145-5.447c-0.898 0.527-1.943 0.829-3.058 0.829-3.361 0-6.085-2.742-6.085-6.125h-6.289c0.008 1.044-0.252 2.103-0.811 3.070-1.679 2.908-5.411 3.897-8.339 2.211l-3.144 5.447c0.905 0.515 1.689 1.268 2.246 2.234 1.676 2.903 0.672 6.623-2.241 8.319l3.145 5.447c0.895-0.522 1.935-0.82 3.044-0.82 3.35 0 6.067 2.725 6.084 6.092h6.289c-0.003-1.034 0.259-2.080 0.811-3.038 1.676-2.903 5.399-3.894 8.325-2.219l3.145-5.447c-0.899-0.515-1.678-1.266-2.232-2.226zM16 22.479c-3.578 0-6.479-2.901-6.479-6.479s2.901-6.479 6.479-6.479c3.578 0 6.479 2.901 6.479 6.479s-2.901 6.479-6.479 6.479z"></path>
		</symbol>
		<symbol id="icon-cogs" viewBox="0 0 32 32">
			<path d="M11.366 22.564l1.291-1.807-1.414-1.414-1.807 1.291c-0.335-0.187-0.694-0.337-1.071-0.444l-0.365-2.19h-2l-0.365 2.19c-0.377 0.107-0.736 0.256-1.071 0.444l-1.807-1.291-1.414 1.414 1.291 1.807c-0.187 0.335-0.337 0.694-0.443 1.071l-2.19 0.365v2l2.19 0.365c0.107 0.377 0.256 0.736 0.444 1.071l-1.291 1.807 1.414 1.414 1.807-1.291c0.335 0.187 0.694 0.337 1.071 0.444l0.365 2.19h2l0.365-2.19c0.377-0.107 0.736-0.256 1.071-0.444l1.807 1.291 1.414-1.414-1.291-1.807c0.187-0.335 0.337-0.694 0.444-1.071l2.19-0.365v-2l-2.19-0.365c-0.107-0.377-0.256-0.736-0.444-1.071zM7 27c-1.105 0-2-0.895-2-2s0.895-2 2-2 2 0.895 2 2-0.895 2-2 2zM32 12v-2l-2.106-0.383c-0.039-0.251-0.088-0.499-0.148-0.743l1.799-1.159-0.765-1.848-2.092 0.452c-0.132-0.216-0.273-0.426-0.422-0.629l1.219-1.761-1.414-1.414-1.761 1.219c-0.203-0.149-0.413-0.29-0.629-0.422l0.452-2.092-1.848-0.765-1.159 1.799c-0.244-0.059-0.492-0.109-0.743-0.148l-0.383-2.106h-2l-0.383 2.106c-0.251 0.039-0.499 0.088-0.743 0.148l-1.159-1.799-1.848 0.765 0.452 2.092c-0.216 0.132-0.426 0.273-0.629 0.422l-1.761-1.219-1.414 1.414 1.219 1.761c-0.149 0.203-0.29 0.413-0.422 0.629l-2.092-0.452-0.765 1.848 1.799 1.159c-0.059 0.244-0.109 0.492-0.148 0.743l-2.106 0.383v2l2.106 0.383c0.039 0.251 0.088 0.499 0.148 0.743l-1.799 1.159 0.765 1.848 2.092-0.452c0.132 0.216 0.273 0.426 0.422 0.629l-1.219 1.761 1.414 1.414 1.761-1.219c0.203 0.149 0.413 0.29 0.629 0.422l-0.452 2.092 1.848 0.765 1.159-1.799c0.244 0.059 0.492 0.109 0.743 0.148l0.383 2.106h2l0.383-2.106c0.251-0.039 0.499-0.088 0.743-0.148l1.159 1.799 1.848-0.765-0.452-2.092c0.216-0.132 0.426-0.273 0.629-0.422l1.761 1.219 1.414-1.414-1.219-1.761c0.149-0.203 0.29-0.413 0.422-0.629l2.092 0.452 0.765-1.848-1.799-1.159c0.059-0.244 0.109-0.492 0.148-0.743l2.106-0.383zM21 15.35c-2.402 0-4.35-1.948-4.35-4.35s1.948-4.35 4.35-4.35 4.35 1.948 4.35 4.35c0 2.402-1.948 4.35-4.35 4.35z"></path>
		</symbol>

		<symbol id="icon-facebook" viewBox="0 0 32 32">
		<path d="M19 6h5v-6h-5c-3.86 0-7 3.14-7 7v3h-4v6h4v16h6v-16h5l1-6h-6v-3c0-0.542 0.458-1 1-1z"></path>
		</symbol>        
		<symbol id="icon-twitter" viewBox="0 0 32 32">
		<path d="M32 7.075c-1.175 0.525-2.444 0.875-3.769 1.031 1.356-0.813 2.394-2.1 2.887-3.631-1.269 0.75-2.675 1.3-4.169 1.594-1.2-1.275-2.906-2.069-4.794-2.069-3.625 0-6.563 2.938-6.563 6.563 0 0.512 0.056 1.012 0.169 1.494-5.456-0.275-10.294-2.888-13.531-6.862-0.563 0.969-0.887 2.1-0.887 3.3 0 2.275 1.156 4.287 2.919 5.463-1.075-0.031-2.087-0.331-2.975-0.819 0 0.025 0 0.056 0 0.081 0 3.181 2.263 5.838 5.269 6.437-0.55 0.15-1.131 0.231-1.731 0.231-0.425 0-0.831-0.044-1.237-0.119 0.838 2.606 3.263 4.506 6.131 4.563-2.25 1.762-5.075 2.813-8.156 2.813-0.531 0-1.050-0.031-1.569-0.094 2.913 1.869 6.362 2.95 10.069 2.95 12.075 0 18.681-10.006 18.681-18.681 0-0.287-0.006-0.569-0.019-0.85 1.281-0.919 2.394-2.075 3.275-3.394z"></path>
		</symbol>        
		<symbol id="icon-vimeo" viewBox="0 0 32 32">
		<path d="M31.988 8.563c-0.144 3.113-2.319 7.381-6.525 12.794-4.35 5.65-8.031 8.481-11.044 8.481-1.863 0-3.444-1.719-4.731-5.163-0.863-3.156-1.719-6.313-2.581-9.469-0.956-3.444-1.981-5.162-3.081-5.162-0.237 0-1.075 0.506-2.513 1.506l-1.506-1.938c1.581-1.387 3.138-2.775 4.669-4.162 2.106-1.819 3.688-2.775 4.744-2.875 2.487-0.237 4.025 1.463 4.6 5.106 0.619 3.931 1.050 6.375 1.294 7.331 0.719 3.263 1.506 4.894 2.369 4.894 0.669 0 1.675-1.056 3.019-3.175 1.337-2.113 2.056-3.725 2.156-4.831 0.194-1.825-0.525-2.744-2.156-2.744-0.769 0-1.556 0.175-2.369 0.525 1.575-5.15 4.575-7.65 9.012-7.506 3.281 0.087 4.831 2.219 4.644 6.388z"></path>
		</symbol>

		<symbol id="icon-location" viewBox="0 0 32 32">        
			<path d="M16 0c-5.523 0-10 4.477-10 10 0 10 10 22 10 22s10-12 10-22c0-5.523-4.477-10-10-10zM16 16c-3.314 0-6-2.686-6-6s2.686-6 6-6 6 2.686 6 6-2.686 6-6 6z"></path>
		</symbol>

		<symbol id="icon-phone" viewBox="0 0 32 32">
			<path d="M22 20c-2 2-2 4-4 4s-4-2-6-4-4-4-4-6 2-2 4-4-4-8-6-8-6 6-6 6c0 4 4.109 12.109 8 16s12 8 16 8c0 0 6-4 6-6s-6-8-8-6z"></path>
		</symbol>

		<symbol id="icon-x" viewBox="0 0 24 24">		
		<path d="M13.4 12l5.3-5.3c0.4-0.4 0.4-1 0-1.4s-1-0.4-1.4 0l-5.3 5.3-5.3-5.3c-0.4-0.4-1-0.4-1.4 0s-0.4 1 0 1.4l5.3 5.3-5.3 5.3c-0.4 0.4-0.4 1 0 1.4 0.2 0.2 0.4 0.3 0.7 0.3s0.5-0.1 0.7-0.3l5.3-5.3 5.3 5.3c0.2 0.2 0.5 0.3 0.7 0.3s0.5-0.1 0.7-0.3c0.4-0.4 0.4-1 0-1.4l-5.3-5.3z"></path>
		</symbol>
	</defs>
</svg>

<body <?php body_class(); ?>>

<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'underscores' ); ?></a>

	<div class="header-fill"></div>
	<header id="header">
		<div class="container">
			<div class="menu-logo ib">
				<a href="/home"><img src="/wp-content/uploads/2018/02/lg-logo.png" alt=""></a>
			</div>
			<nav class="menu-nav ib desktop-nav">
				<ul>
					<li><a href="/">Home</a></li>
					<li><a href="/rentals">Rentals</a></li>
					<li><a href="/about">About</a></li>
					<li><a href="/equipment" class="hov-equip">Equipment</a></li>
					<li><a href="/services" class="hov-service">Services</a></li>
					<li><a href="/contact">Contact</a></li>
					<li><a href="#" class="hov-search"><img class="search-icon" src="/wp-content/uploads/2018/02/search-icon-1.png"></a></li>
				</ul>
			</nav>
			<!-- START mobile nav -->
			<div class="mobile-nav-wrapper">
				<a href="#"><img class="search-open" src="/wp-content/uploads/2018/02/search-icon-1.png"></a>
				<div class="navicon">&#9776;</div>				
			</div>
			<nav class="mobile-nav menu-nav">				
				<ul>
					<li><a class="close"><svg class="icon icon-x"><use xlink:href="#icon-x"></use></svg></a></li>
					<li><a href="/">Home</a></li>
					<li><a href="/rentals">Rentals</a></li>
					<li><a href="/about">About</a></li>
					<li><a href="/equipment" class="">Equipment</a></li>
					<li><a href="/services" class="">Services</a></li>
					<li><a href="/contact">Contact</a></li>
				</ul>				
			</nav>
			<!-- END mobile nav -->			
		</div>
		<!-- sub menus -->
		<div class="sub-menu sub-menu-equip desktop-nav">
			<div class="sub-menu-border"></div>
			<div class="container">
				<ul>
					<li><a href="">Boilers</a></li>
					<li><a href="">Compressors</a></li>
					<li><a href="">Pumps</a></li>
					<li><a href="">Specialty</a></li>
					<li><a href="">News</a></li>
				</ul>
			</div>
		</div>
		<div class="sub-menu sub-menu-service desktop-nav">
			<div class="sub-menu-border"></div>
			<div class="container hov-service">
				<ul>
					<li><a href="">Parts</a></li>
					<li><a href="">Maintenance</a></li>
					<li><a href="">Repair</a></li>
					<li><a href="">Rentals</a></li>					
				</ul>
			</div>
		</div>
		<div class="sub-menu sub-menu-search desktop-nav">
			<div class="sub-menu-border"></div>
			<div class="container">
				<?php get_search_form(); ?>
			</div>
		</div>
		<!-- END sub menus -->
		<div class="header-border"></div>
	</header>

	<div id="content" class="site-content">
