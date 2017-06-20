$(document).ready(function() {
  changeColor();
  allChecked();
});

function changeColor() {
  $('.donate-radio').on('click', function() {
  	$(this).css('color','white');
    $(this).parents('.donate-container').css('background-color','rgba(0, 0, 0, 0.05)');
    $(this).siblings('.donate-radio').css('color','#ff0025');
    $(this).siblings('.donate-radio').css('border','solid 1px #ff0025');
    $(this).parents('.donate-answers').siblings('.donate-question').css('color','black');
  });
}

function allChecked() {
  var $answers = $('.donate-answers');

  $('.donate-radio').on('click', function() {
  	if($answers.find("input:radio:checked").length === $answers.length - 1) {
      $('.donate-submit').removeAttr('disabled');
      $('.donate-submit').removeClass('donate-inactive');
      $('.donate-submit').addClass('donate-active');
    }
  });
}