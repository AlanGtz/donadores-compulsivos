$(window).load(function() {
  screenshot();
});

function screenshot() {
  var element = $("#html-content-holder");
  var button = $("#btn-Convert-Html2Image");

  html2canvas(element, {
    onrendered: function (canvas) {
      $('.cartel-wrapper').append(canvas);
      $(element).css('display','none')

      $(button).on('click', function () {
        canvas.toBlobHD(function(blob) {
          saveAs(blob, "cartel.png");
        });
      });
    }
  });
}