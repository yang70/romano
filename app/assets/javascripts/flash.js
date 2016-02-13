
$(document).on("ready page:change", function() {
  window.setTimeout(function() {
      $(".alert-alert, .alert-error").fadeTo(500, 0).slideUp(500, function(){
          $(this).remove();
      });
  }, 5000);

  window.setTimeout(function() {
      $(".alert-success, .alert-notice").fadeTo(500, 0).slideUp(500, function(){
          $(this).remove();
      });
  }, 2500);
});
