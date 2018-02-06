jQuery(document).ready(function($) {
  
  const sliderHt = $('.cycloneslider img').height();
  const sliderCapHt = $('.cycloneslider-caption').height()  

  $('.cycloneslider-slides, .cycloneslider-template-standard, .cycloneslider-slide-image, div.cycloneslider-slides.cycle-slideshow').css('height', sliderHt);

  $('.slider-caption-wrapper').css('transform', 'translateY(-' + ((sliderHt / 2) - ((sliderCapHt / 2) - 20)) + 'px)');

  const updateContainer = () => {
    const sliderHt = $('.cycloneslider img').height();
    const sliderCapHt = $('.cycloneslider-caption').height();
  
    $('.cycloneslider-slides, .cycloneslider-template-standard, .cycloneslider-slide-image').css('height', sliderHt);
  
    $('.slider-caption-wrapper').css('transform', 'translateY(-' + ((sliderHt / 2) - ((sliderCapHt / 2) - 20)) + 'px)');
  }

  $(window).resize(function() {
    updateContainer();
  });

});