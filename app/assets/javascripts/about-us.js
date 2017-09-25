$(document).ready(function() {
  playAbout();
  parallax();
});

function playAbout() {
  $('.about-play').magnificPopup({
    type: 'iframe'
  });
}

function parallax() {
  $(window).scroll(function() { 
    $('.mission').css({
	    'top': 85-($(this).scrollTop() / 27) + '%'
	  });

  	$('.vision').css({
  	  'top': 15+($(this).scrollTop() / 27) + '%'
  	});
  });
}