$(function() {
  $form = $('.new_resource_form');
  $btnNew = $('.btn-add-resource');
  $formAlert = $('form .alert');

  /* If there are any errors on the form, hide the add button  */
  if ($formAlert.length)
  {
    $btnNew.hide(); 
  }
  else {
    /* Hide the form and set it's opacity to 0 for the transition */
    $form.hide();
    $form.css({opacity: 0});
  }

  /* Fade the form in when user clicks add. Hide the button. */
  $btnNew.click(function() {
    $form.show();
    $form.transition({ opacity: 1 });
    $(this).transition({ opacity: 0 });
  });

});

