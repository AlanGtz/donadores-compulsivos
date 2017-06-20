$(function() {
  $.scrollify({
  	section : 'section',
  	interstitialSection : '.inter',
    standardScrollElements: '.standartScroll'
  });
});

$(document).ready(function() {
  playVideo();
  changeCampaign();
  numberScroll();
  activeTestimony();
});

function playVideo() {
  $('.play-btn').magnificPopup({
    type: 'iframe'
  });
}

function changeCampaign() {
  $('.campaign-month').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    infinite: false,
    initialSlide: 3
  });

  $('.left-js').on('click', function() {
    $('.campaign-month').slick('slickPrev');
  });
  
  $('.right-js').on('click', function() {
    $('.campaign-month').slick('slickNext');
  });

  $('.campaign-side-right').css('left', '-25%');
  $('.campaign-more').hide();

  var currentSlide = $('.campaign-month').slick('slickCurrentSlide');
  var slideCount = $('.campaign-month').slick('getSlick').slideCount;
  var nextSlide = $('.campaign-month').slick('getSlick').nextSlide;

  $('.campaign-month').on('beforeChange', function(event, slick, currentSlide, nextSlide) {
    if (nextSlide == 0) {
      $('.campaign-side-left').animate({ "right": "-25%" }, "slow" );
      $('.campaign-more').fadeIn();
    } else if (nextSlide == (slideCount - 1)) {
      $('.campaign-side-right').animate({ "left": "-25%" }, "slow" );
    } else {
      $('.campaign-side-left').animate({ "right": "0" }, "slow" );
      $('.campaign-side-right').animate({ "left": "0" }, "slow" );
      $('.campaign-more').fadeOut();
    }
  });
}

function numberScroll() {
  $(window).scroll(function() { 
    var numbersTop = $('.our-numbers-js').offset().top - $('section').height();

    if ($(window).scrollTop() == numbersTop) {
      counter();
    }
  });
}

function counter() {
  $('.count').each(function () {
    $(this).prop('Counter',0).animate({
        Counter: $(this).text()
    }, {
        duration: 3000,
        easing: 'easeInOutSine',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
  });
}

function activeTestimony() {
  $('.testimony-js').on('click', function() {
    $(this).siblings('.testimony-js').removeClass('active-card');
    $(this).addClass('active-card');
  });
}

