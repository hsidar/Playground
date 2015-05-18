    $( document ).ready(function() {
alert("Chosen person is poop.");
    });

$(document).ready(function () {
      var audio = $("#bong")[0];

      $("#popcorn_button").click(function () {
        audio.play();
        alert("Chosen person is poop.");
      });
});
return

      $('#menu').click(function () {
        $('#footer').fadeTo('fast', 0.2);
        $('#menu').css('z-index', 5);
        $('#options').fadeTo('slow', 1);

      });

      $('#menu').mouseleave(function () {

        $('#menu').fadeTo('slow', 0);
        $('#menu').css('z-index', 0);
        $('#options').fadeTo('fast', 0);
      });