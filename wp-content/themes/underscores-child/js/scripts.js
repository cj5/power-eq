jQuery(document).ready(function($) {

  // VP WIDTH STUFF
  $('body').css('overflow-y', 'hidden');
  let vpW = $(window).width();
  console.log('vp width: ', vpW);
  $('body').css('overflow-y', 'visible');

  // MAIN NAV SUB MENU TRANSITIONS
  $('.hov-equip, .sub-menu-equip').hover(function(){
    $('.sub-menu-equip').css('display', 'inline-block');
  }, function(){
    $('.sub-menu-equip').css('display', 'none');
  });
  $('.sub-menu-equip').hover(function(){
    $('.sub-menu-equip').css('display', 'inline-block');
  }, function(){
    $('.sub-menu-equip').css('display', 'none');
  });
  // ~~~~~~~~~
  $('.hov-service, .sub-menu-service').hover(function(){
    $('.sub-menu-service').css('display', 'inline-block');
  }, function(){
    $('.sub-menu-service').css('display', 'none');
  });
  // ~~~~~~~~~
  $('.hov-search, .sub-menu-search').hover(function(){
    $('.sub-menu-search').css('display', 'inline-block');
  }, function(){
    $('.sub-menu-search').css('display', 'none');
  });
  // ~~~~~~~~~
  $('.hov-boilers, .sub-menu-boilers').hover(function(){
    $('.sub-menu-boilers').css('display', 'inline-block');
  }, function(){
    $('.sub-menu-boilers').css('display', 'none');
  });
  // ~~~~~~~~~
  $('.hov-compressors, .sub-menu-compressors').hover(function(){
    $('.sub-menu-compressors').css('display', 'inline-block');
  }, function(){
    $('.sub-menu-compressors').css('display', 'none');
  });
  // ~~~~~~~~~
  $('.hov-pumps, .sub-menu-pumps').hover(function(){
    $('.sub-menu-pumps').css('display', 'inline-block');
  }, function(){
    $('.sub-menu-pumps').css('display', 'none');
  });
  // ~~~~~~~~~
  $('.hov-specialty, .sub-menu-specialty').hover(function(){
    $('.sub-menu-specialty').css('display', 'inline-block');
  }, function(){
    $('.sub-menu-specialty').css('display', 'none');
  });

  // HERO IMG FILL
  let heroHt = $('#hero img').height();
  $('.hero-img-fill').css('height', heroHt);
  if (heroHt === 0) {
    console.log('hero ht: ', heroHt);
    setTimeout(() => {
      heroHt = $('#hero img').height();
      console.log('hero ht timeout: ', heroHt);
      $('.hero-img-fill').css('height', heroHt);
      if (heroHt === 0) {
        setTimeout(() => {
          heroHt = $('#hero img').height();
          console.log('hero ht timeout 2: ', heroHt);
          $('.hero-img-fill').css('height', heroHt);
        }, 2000);
      }
    }, 1000);
  }

  // BANNER IMG FILL
  let bannerHt = $('#banner img').height();
  $('.banner-img-fill').css('height', bannerHt);
  if (bannerHt === 0) {
    console.log('banner ht: ', bannerHt);
    setTimeout(() => {
      bannerHt = $('#banner img').height();
      console.log('banner ht timeout: ', bannerHt);
      $('.banner-img-fill').css('height', bannerHt);
      if (bannerHt === 0) {
        setTimeout(() => {
          bannerHt = $('#banner img').height();
          console.log('banner ht timeout 2: ', bannerHt);
          $('.banner-img-fill').css('height', bannerHt);
        }, 2000);
      }
    }, 1000);
  }

  // MISSION IMAGE FILTER SIZING
  let missionHt = $('#mission .content').outerHeight();
  $('#mission').css('height', missionHt);
  $('#mission .img-filter').css('height', missionHt);

  // MAP FILTER SIZING
  let mapHt = $('#locations').outerHeight(true);
  let locBorderString = $('#locations').css('border-width').split(' ');
  let locBorder = locBorderString.filter(x => x != ('0px'));
  let border = parseInt(locBorder, 10);
  // console.log('mapHt: ', mapHt);
  // console.log('locBorder: ', locBorder);
  // console.log('border: ', border);
  $('.map-filter').css('height', mapHt - border);
  $('#map').css('height', mapHt - border);
  if (vpW < 993) {
    let locHt = $('.locations').outerHeight(true);
    $('#map').css('height', (mapHt - border) - locHt);
  }

  // OWL CAROUSEL
  $('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    navText:['',''],
    margin: 18,
    dots: false,
    autoplay: true,
    autoplayTimeout: 2500,
    // autoplayHoverPause: true,
    responsive:{
      0:{ items: 2 },
      460:{ items: 3 },
      768:{ items: 3 },
      1000:{ items: 4 }
    }
  });

  //////////////////////////////////
  // FUNCTION FIRES ON SCREEN RESIZE
  const updateContainer = () => {
    // VP WIDTH STUFF
    $('body').css('overflow-y', 'hidden');
    let vpW = $(window).width();
    console.log('vp width: ', vpW);
    $('body').css('overflow-y', 'visible');

    // HERO IMG FILL
    let heroHt = $('#hero img').height();    
    $('.hero-img-fill').css('height', heroHt);

    // BANNER IMG FILL
    let bannerHt = $('#banner img').height();
    console.log('bannerHt', bannerHt);
    $('.banner-img-fill').css('height', bannerHt);
    
    // MISSION IMAGE FILTER SIZING
    let missionHt = $('#mission .content').outerHeight();
    $('#mission').css('height', missionHt);
    $('#mission .img-filter').css('height', missionHt);

    // MAP FILTER SIZING
    let mapHt = $('#locations').outerHeight(true);
    let locBorderString = $('#locations').css('border-width').split(' ');
    let locBorder = locBorderString.filter(x => x != ('0px'));
    let border = parseInt(locBorder, 10);
    // console.log('mapHt: ', mapHt);
    // console.log('locBorder: ', locBorder);
    // console.log('border: ', border);
    $('.map-filter').css('height', mapHt - border);
    $('#map').css('height', mapHt - border);
    if (vpW < 993) {
      let locHt = $('.locations').outerHeight(true);
      $('#map').css('height', (mapHt - border) - locHt);
    }
  }

  $(window).resize(function() {
    updateContainer();
  });

});

// GOOGLE MAP JS API
var map;
function initMap() {
  var location = {lat: 35.1475699, lng: -89.9602086};
  map = new google.maps.Map(document.getElementById('map'), {
    center: location,
    zoom: 16,
    styles: [
    {
      'elementType': 'geometry',
      'stylers': [
        {
          'color': '#f5f5f5'
        }
      ]
    },
    {
      'elementType': 'labels.icon',
      'stylers': [
        {
          'visibility': 'off'
        }
      ]
    },
    {
      'elementType': 'labels.text.fill',
      'stylers': [
        {
          'color': '#616161'
        }
      ]
    },
    {
      'elementType': 'labels.text.stroke',
      'stylers': [
        {
          'color': '#f5f5f5'
        }
      ]
    },
    {
      'featureType': 'administrative.land_parcel',
      'elementType': 'labels.text.fill',
      'stylers': [
        {
          'color': '#bdbdbd'
        }
      ]
    },
    {
      'featureType': 'administrative.locality',
      'elementType': 'labels.text.fill',
      'stylers': [
        {
          'color': '#3354bb'
        }
      ]
    },
    {
      'featureType': 'landscape',
      'elementType': 'geometry.fill',
      'stylers': [
        {
          'color': '#cccccc'
        }
      ]
    },
    {
      'featureType': 'poi',
      'elementType': 'geometry',
      'stylers': [
        {
          'color': '#eeeeee'
        }
      ]
    },
    {
      'featureType': 'poi',
      'elementType': 'geometry.fill',
      'stylers': [
        {
          'color': '#cccccc'
        }
      ]
    },
    {
      'featureType': 'poi',
      'elementType': 'labels.text.fill',
      'stylers': [
        {
          'color': '#757575'
        }
      ]
    },
    {
      'featureType': 'poi.park',
      'elementType': 'geometry',
      'stylers': [
        {
          'color': '#e5e5e5'
        }
      ]
    },
    {
      'featureType': 'poi.park',
      'elementType': 'labels.text.fill',
      'stylers': [
        {
          'color': '#9e9e9e'
        }
      ]
    },
    {
      'featureType': 'road',
      'elementType': 'geometry',
      'stylers': [
        {
          'color': '#ffffff'
        }
      ]
    },
    {
      'featureType': 'road',
      'elementType': 'labels.text.stroke',
      'stylers': [
        {
          'color': '#e5e7e7'
        }
      ]
    },
    {
      'featureType': 'road.arterial',
      'elementType': 'labels.text.fill',
      'stylers': [
        {
          'color': '#0A56A1'
        }
      ]
    },
    {
      'featureType': 'road.highway',
      'elementType': 'geometry',
      'stylers': [
        {
          'color': '#dadada'
        }
      ]
    },
    {
      'featureType': 'road.highway',
      'elementType': 'geometry.fill',
      'stylers': [
        {
          'color': '#0c56a1'
        }
      ]
    },
    {
      'featureType': 'road.highway',
      'elementType': 'labels.text.fill',
      'stylers': [
        {
          'color': '#616161'
        }
      ]
    },
    {
      'featureType': 'road.local',
      'elementType': 'labels.text.fill',
      'stylers': [
        {
          'color': '#9e9e9e'
        }
      ]
    },
    {
      'featureType': 'transit.line',
      'elementType': 'geometry',
      'stylers': [
        {
          'color': '#e5e5e5'
        }
      ]
    },
    {
      'featureType': 'transit.station',
      'elementType': 'geometry',
      'stylers': [
        {
          'color': '#eeeeee'
        }
      ]
    },
    {
      'featureType': 'water',
      'elementType': 'geometry',
      'stylers': [
        {
          'color': '#c9c9c9'
        }
      ]
    },
    {
      'featureType': 'water',
      'elementType': 'geometry.fill',
      'stylers': [
        {
          'color': '#e8f0ff'
        }
      ]
    },
    {
      'featureType': 'water',
      'elementType': 'labels.text.fill',
      'stylers': [
        {
          'color': '#9e9e9e'
        }
      ]
    }
  ]            
  });
  var marker = new google.maps.Marker({
    position: location,
    map: map                 
  });             
}