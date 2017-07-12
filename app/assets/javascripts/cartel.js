$(document).ready(function() {
  screenshot();
});

function screenshot() {
  var element = $("#html-content-holder");

  html2canvas(element, {
    onrendered: function (canvas) {
      var imgageData = canvas.toDataURL("image/png");
      var newData = imgageData.replace(/^data:image\/png/, "data:application/octet-stream");

      $("#btn-Convert-Html2Image").attr("download", "cartel_donation.png").attr("href", newData);
    }
  });
}