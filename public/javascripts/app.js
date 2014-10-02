$(document).ready(function () {

    $("p1").hide();

    $("#title").click(function () {
      $(this).toggle();
    });

    $( "button" ).click(function() {
      $("p1").toggle( "slow" );
    });

});
