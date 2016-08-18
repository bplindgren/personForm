$(document).ready(function() {
  $('p').on('click', function(event) {
    $('p').removeClass('highlight');
    $(this).addClass('highlight');
  });

  $('#person_gender_male').on('click', function(event) {
    $(this).parent().addClass('selected');
    $('.create').prop('disabled', false);
  });

  $('#person_gender_female').on('click', function(event) {
    $(this).parent().addClass('selected');
    $('.create').prop('disabled', false);
  });

  $('#person-form').submit(function(event) {
    if ($('p:nth-of-type(3)').hasClass('selected') == false) {
      event.preventDefault();
      alert("You need to choose a gender");
      $('.clear').prop('disabled', false);
    }
  });


});