$(document).ready(function() {
  $('p').on('click', function(event) {
    $('p').removeClass("highlight");
    $(this).addClass("highlight");
  });
});