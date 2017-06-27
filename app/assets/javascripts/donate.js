$(document).ready(function() {
  changeColor();
  allChecked();
  isAble();
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
  var answers = $('.donate-answers');

  $('.donate-radio').on('click', function() {
  	if(answers.find("input:radio:checked").length === answers.length - 1) {
      $('.donate-submit').removeAttr('disabled');
      $('.donate-submit').removeClass('donate-inactive');
      $('.donate-submit').addClass('donate-active');
    }
  });
}

function isAble() {
  var correct = ['yes','yes','no','no','no','no','no','no','no']
  var answers = [];

  $('.donate-submit').on('click', function(e) {
    if ($(this).hasClass('donate-inactive')) {
      e.preventDefalut();
    } else {
      $('.donate-radiobtn:checked').each(function() {
        var valueSelected = $(this).filter(':checked').val();

        answers.push(valueSelected);
      });

      if (arraysEqual(correct, answers) == true) {
        $('.donate-checkbox').attr('checked', true);
      } else {
        $('.donate-checkbox').attr('checked', false);
      }
    }
  });
}

function arraysEqual(arr1, arr2) {
  if(arr1.length !== arr2.length)
    return false;
  for(var i = arr1.length; i--;) {
    if(arr1[i] !== arr2[i])
      return false;
  }
  return true;
}