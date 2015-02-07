// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
;$(function () {
  // Hide the input when the page loads.
  $('.feedback-input').hide();

  $('.feedback-toggle').on('click', function () {
    $('.feedback-input').toggle();
  });


  // When the form submission is successful
  $('#feedback-form').on('ajax:success', function (e, data, status, xhr) {
    $('.feedback-input').html('thanks');
  });
});
