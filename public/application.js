// alert('loaded...');
$('textarea').bind('keypress', function(e) {
  if ((e.keyCode || e.which) == 13) {
    $(this).parents('form').submit();
    return false;
  }
});