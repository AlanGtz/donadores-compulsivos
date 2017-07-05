$(document).ready(function() {
  showDescription();
});

function showDescription() {
  $('.support-card').on('click', function() {
    $(this).children('.support-description').toggleClass('support-visible');
  });

  $('.support-description').on('click', function() {
    $(this).toggleClass('support-visible');
  });

  $('.support-card').on('mouseover', function() {
    $(this).children('.support-description').addClass('support-visible');
  });

  $('.support-card').on('mouseout', function() {
    $(this).children('.support-description').removeClass('support-visible');
  });
}