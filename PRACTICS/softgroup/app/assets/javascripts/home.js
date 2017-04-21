$(document).ready(function(){
  $("button.close").click(function(){
    $("div.alert").fadeOut('slow');
  });

  $('div.alert').delay(3000).fadeOut();

  $('body ').on('click', 'h2', function () {
    alert('click');
  });

  $('body ').on('click', '.tuggle_button', function () {
    $('.full_name').toggle();

    text = $(Jone).text();
    text = text === "Hide" ? "Show" : "Hide";
    return false;
  });

});
