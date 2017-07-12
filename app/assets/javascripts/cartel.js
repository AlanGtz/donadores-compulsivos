$(document).ready(function() {
  screenshot();
});

function screenshot() {
  var element = $("#html-content-holder");

  $("#btn-Convert-Html2Image").on('click', function () {
    html2canvas(element, {
      onrendered: function (canvas) {
        Canvas2Image.saveAsJPEG(canvas);
      }
    });
  });
}