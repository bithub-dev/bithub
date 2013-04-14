$(function() {
  $form = $('.new_product_form');
  $btnNew = $('.btn-add-resource');


  $form.hide();
  $form.css({opacity: 0});

  $btnNew.click(function() {
    $form.show();
    $form.transition({ opacity: 1 });
    $(this).transition({ opacity: 0 });
  });
});