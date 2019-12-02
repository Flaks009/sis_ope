document.addEventListener('DOMContentLoaded', function () {
  $('#error_explanation').addClass('error-message');
  setTimeout(function () {
    $('#error_explanation').fadeOut("slow").empty();
  }, 5000);
}, false);