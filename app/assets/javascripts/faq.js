$(document).ready(function() {
  goToQuestion();
});

function goToQuestion() {
  $('.faq-link').on('click', function() {

    var anchor = $(this).children('a').attr('href');

  	$('.faq-link').removeClass('faq-active');
  	$(this).addClass('faq-active');

  	$('.faq-subject').removeClass('faq-active');
  	$(anchor).addClass('faq-active');
  });
}