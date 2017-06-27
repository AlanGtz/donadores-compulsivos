$(document).ready(function() {
  screenshot();
});

function screenshot() {
  var element = $("#html-content-holder");
  var getCanvas;

  $("#btn-Convert-Html2Image").on('click', function () {
    html2canvas(element, {
      onrendered: function (canvas) {
        getCanvas = canvas;
      }
    });

    var imgageData = getCanvas.toDataURL("image/png");
    var newData = imgageData.replace(/^data:image\/png/, "data:application/octet-stream");

    $("#btn-Convert-Html2Image").attr("download", "cartel_donation.png").attr("href", newData);
  });
}
