$(function() {
  $.scrollify({
  	section : 'section',
  	interstitialSection : '.inter',
  });
});

$(window).scroll(startCounter);

function startCounter() {
    if ($(window).scrollTop() > $('.our-numbers').offset().top()) {
        $(window).off('scroll', startCounter);
        $('.count').each(function () {
            var $this = $(this);
            jQuery({ Counter: 0 }).animate({ Counter: $this.text() }, {
                duration: 1000,
                easing: 'swing',
                step: function () {
                    $this.text(Math.ceil(this.Counter));
                }
            });
        });
    }
}
