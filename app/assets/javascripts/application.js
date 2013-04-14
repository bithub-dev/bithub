// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {
    $form = $('.new_form');
    $btnNew = $('.btn-add-item');
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


