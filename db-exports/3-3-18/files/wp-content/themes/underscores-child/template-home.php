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
Template Name: Home
*/

get_header(); ?>

<section id="hero">
  <div class="hero-filter"></div>
  <div class="hero-img-fill"></div>
  <?php $homeHeroImg = get_field('home_hero_image'); ?>
  <img src="<?php echo $homeHeroImg['url']; ?>" alt="<?php echo $homeHeroImg['alt']; ?>" >
  <div class="hero-caption">
    <div class="container">
      <h1><?php the_field('home_hero_heading'); ?></h1>
    </div>
  </div>
</section>

<section id="cat-drops">
  <div class="container">
    <ul>
      <li class="section ib">
        <a class="hov-boilers" href="/">
          <svg class="icon icon-fire"><use xlink:href="#icon-fire"></use></svg>
          <p>Boilers</p><span></span>
        </a>
      </li>
      <li class="section ib">
        <a class="hov-compressors" href="/">
        <svg class="icon icon-meter"><use xlink:href="#icon-meter"></use></svg>
        <p>Compressors</p><span></span></a>            
      </li>  
      <li class="section ib">
        <a class="hov-pumps" href="/">
        <svg class="icon icon-cog"><use xlink:href="#icon-cog"></use></svg>
        <p>Pumps</p><span></span></a>            
      </li>  
      <li class="section ib">
        <a class="hov-specialty" href="/">
        <svg class="icon icon-cogs"><use xlink:href="#icon-cogs"></use></svg>
        <p>Specialty</p><span></span></a>            
      </li>
    </ul>
  </div>
  <!-- SUB MENUS -->
  <!-- <div class="sub-menu sub-menu-boilers">
    <div class="sub-menu-border"></div>
    <div class="container">
      <ul>
        <li><a href="">Cleaver Brooks</a></li>
        <li><a href="">Nebraska Boiler</a></li>
        <li><a href="">Parker Boiler</a></li>
        <li><a href="">Thermal Solutions</a></li>
        <li><a href="">Utica Boilers</a></li>
        <li><a href="">BFS Industries</a></li>
        <li><a href="">Reimers</a></li>
        <li><a href="">Shipco Boilers</a></li>
        <li><a href="">Columbia Boiler Co</a></li>
      </ul>
  </div>
</div>
<div class="sub-menu sub-menu-compressors">
    <div class="sub-menu-border"></div>
    <div class="container">
      <ul>
        <li><a href="">Gardner Denver</a></li>
        <li><a href="">FS Elliot</a></li>
        <li><a href="">Parker Airtek</a></li>
        <li><a href="">Cameron</a></li>
        <li><a href="">Dominick Hunter</a></li>
        <li><a href="">Elmo Rietschle</a></li>
        <li><a href="">Kobelco</a></li>
        <li><a href="">Powerex</a></li>
      </ul>
  </div>
</div>
<div class="sub-menu sub-menu-pumps">
    <div class="sub-menu-border"></div>
    <div class="container">
      <ul>
      <li><a href="">Viking Pump</a></li>
      <li><a href="">Ansimag</a></li>
      <li><a href="">Dean Pump</a></li>
      <li><a href="">Ebara</a></li>
      <li><a href="">Nietzsch</a></li>
      <li><a href="">Pulsafeeder</a></li>
      <li><a href="">Sandpiper</a></li>
      </ul>
  </div>
</div>
<div class="sub-menu sub-menu-specialty">
    <div class="sub-menu-border"></div>
    <div class="container">
      <ul>
        <li><a href="">Armstrong</a></li>
        <li><a href="">Mueller</a></li>
        <li><a href="">Fike</a></li>
        <li><a href="">Shipco Pumps</a></li>
        <li><a href="">Thrush</a></li>						
      </ul>
  </div>
</div> -->
<!-- END sub menus -->
</section>

<section id="about">
  <div class="container">
    <div class="wrapper ib">
      <div class="left ib">
        <?php 
        $homeAboutImage = get_field('home_about_image'); ?>
        <img src="<?php echo $homeAboutImage['url']; ?>" alt="<?php echo $homeAboutImage['alt']; ?>" >
      </div>
      <div class="right ib">
        <h2><?php the_field('home_about_heading'); ?></h2>
        <p><?php the_field('home_about_content'); ?></p>
      </div>
      <div class="left-under ib">
        <?php 
        $homeAboutImage = get_field('home_about_image'); ?>
        <img src="<?php echo $homeAboutImage['url']; ?>" alt="<?php echo $homeAboutImage['alt']; ?>" >
      </div>
    </div>
  </div> 
</section>

<section id="mission">
  <div class="mission-img"></div>
  <div class="img-filter"></div>
  <div class="container">        
    <div class="content">
      <h2><?php the_field('home_mission_heading'); ?></h2>
      <p><?php the_field('home_mission_content'); ?></p>
    </div>  
  </div>
</section>

<section id="companies">
  <div class="container">      

    <h2><?php the_field('home_companies_heading'); ?></h2>
    
    <!-- OWL CAROUSEL -->
    <div class="owl-carousel owl-companies owl-theme">
      <div class="item">
        <a href="<?php the_field('company_1_url'); ?>" target="_blank">
          <?php $company1Logo = get_field('company_1_logo'); ?>
          <img src="<?php echo $company1Logo['url']; ?>" alt="<?php echo $company1Logo['alt']; ?>">
        </a>
      </div>
      <div class="item">
        <a href="<?php the_field('company_2_url'); ?>" target="_blank">
          <?php $company2Logo = get_field('company_2_logo'); ?>
          <img src="<?php echo $company2Logo['url']; ?>" alt="<?php echo $company2Logo['alt']; ?>">
        </a>
      </div>
      <div class="item">
        <a href="<?php the_field('company_3_url'); ?>" target="_blank">
          <?php $company3Logo = get_field('company_3_logo'); ?>
          <img src="<?php echo $company3Logo['url']; ?>" alt="<?php echo $company3Logo['alt']; ?>">
        </a>
      </div>
      <div class="item">
        <a href="<?php the_field('company_4_url'); ?>" target="_blank">
          <?php $company4Logo = get_field('company_4_logo'); ?>
          <img src="<?php echo $company4Logo['url']; ?>" alt="<?php echo $company4Logo['alt']; ?>">
        </a>
      </div>
      <div class="item">
        <a href="<?php the_field('company_5_url'); ?>" target="_blank">
          <?php $company5Logo = get_field('company_5_logo'); ?>
          <img src="<?php echo $company5Logo['url']; ?>" alt="<?php echo $company5Logo['alt']; ?>">
        </a>
      </div>
      <div class="item">
        <a href="<?php the_field('company_6_url'); ?>" target="_blank">
          <?php $company6Logo = get_field('company_6_logo'); ?>
          <img src="<?php echo $company6Logo['url']; ?>" alt="<?php echo $company6Logo['alt']; ?>">
        </a>
      </div>
      <div class="item">
        <a href="<?php the_field('company_7_url'); ?>" target="_blank">
          <?php $company7Logo = get_field('company_7_logo'); ?>
          <img src="<?php echo $company7Logo['url']; ?>" alt="<?php echo $company7Logo['alt']; ?>">
        </a>
      </div>
      <div class="item">
        <a href="<?php the_field('company_8_url'); ?>" target="_blank">
          <?php $company8Logo = get_field('company_8_logo'); ?>
          <img src="<?php echo $company8Logo['url']; ?>" alt="<?php echo $company8Logo['alt']; ?>">
        </a>
      </div>
    </div>

  </div>
</section>

<?php

get_footer();
