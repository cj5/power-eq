<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Underscores
 */

?>

	</div><!-- #content -->

  <section id="locations">
    <div class="container">
      <div class="locations ib">
        <h2>Locations</h2>
        <ul>
        <li>
          <!-- LOCATION 1 -->
          <a href="https://goo.gl/maps/3KSbkGNvk8P2" class="mg-md-rt loc-w" target="_blank"><svg class="icon icon-location"><use xlink:href="#icon-location"></use></svg>Memphis, TN – Corporate Office
          </a><a href="" class="phone"><svg class="icon icon-phone"><use xlink:href="#icon-phone"></use></svg>901-327-8261</a>
        </li>
        <li>
          <!-- LOCATION 2 -->
          <a href="https://goo.gl/maps/mzLrxYgZBf82" class="mg-md-rt loc-w" target="_blank"><svg class="icon icon-location"><use xlink:href="#icon-location"></use></svg>Little Rock, Arkansas</a><a href="" class="phone"><svg class="icon icon-phone"><use xlink:href="#icon-phone"></use></svg>501-758-7148</a>
        </li>
        <li>
          <!-- LOCATION 3 -->
          <a href="#" class="no-link mg-md-rt loc-w"><svg class="icon icon-location"><use xlink:href="#icon-location"></use></svg>Tri-Cities, Tennessee</a><a href="" class="phone"><svg class="icon icon-phone"><use xlink:href="#icon-phone"></use></svg>423-484-3220</a>
        </li>
        <li>
          <!-- LOCATION 4 -->
          <a href="#" class="no-link mg-md-rt loc-w"><svg class="icon icon-location"><use xlink:href="#icon-location"></use></svg>Tupelo, Mississippi</a><a href="" class="phone"><svg class="icon icon-phone"><use xlink:href="#icon-phone"></use></svg>662-231-9415</a>
        </li>
      </ul>
      </div>        
    </div>      
    <!-- <div class="map-filter"></div> -->
    <div class="map">
        <div id="map"></div>
    </div>
  </section>

	<footer id="colophon" class="site-footer">
		<div class="site-info">
		<footer id="footer">
      <div class="container">
        <div class="wrapper">
          <div class="emergency ib">
            <h4>24/7 Emergency Service</h4>
            <a href=""><svg class="icon icon-phone"><use xlink:href="#icon-phone"></use></svg><span>662-231-9415</span></a>
          </div>
          <div class="social-mobile ib">
            <ul>
              <li><a href="">
                <svg class="icon icon-facebook"><use xlink:href="#icon-facebook"></use></svg>
              </a></li>
              <li><a href="">
                <svg class="icon icon-twitter"><use xlink:href="#icon-twitter"></use></svg>
              </a></li>
              <li><a href="">
                <svg class="icon icon-vimeo"><use xlink:href="#icon-vimeo"></use></svg>
              </a></li>
            </ul>
          </div>
          <div class="copyright ib">
            <ul>
              <li><a href="">Contact</a></li>
              <li><a href="">Privacy</a></li>
              <li><a href="">Sitemap</a></li>
            </ul>
            <p>&copy; <script>document.write(new Date().getFullYear())</script> Power Equipment Company   <span class="credit"><i>Web Design:</i>&nbsp;&nbsp;<a href="http://chrisstack.co" target="_blank">chrisstack.co</a></span></p>
          </div>
          <div class="social ib">
            <ul>
              <li><a href="">
                <svg class="icon icon-facebook"><use xlink:href="#icon-facebook"></use></svg>
              </a></li>
              <li><a href="">
                <svg class="icon icon-twitter"><use xlink:href="#icon-twitter"></use></svg>
              </a></li>
              <li><a href="">
                <svg class="icon icon-vimeo"><use xlink:href="#icon-vimeo"></use></svg>
              </a></li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
		</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

<!-- Google Map JS API -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8xo2ggOdKkh3Jue90Jppf9iDca7OlDMs&callback=initMap"
    async defer></script>

    <!-- <script src="jquery.min.js"></script> -->
    <script src="/wp-content/themes/underscores-child/owlcarousel/owl.carousel.min.js"></script>

</body>
</html>
