// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var ready = function () {
  // Hide the input when the page loads.
  $('.feedback-main').hide();

  $('.feedback-toggle').on('click', function () {
    $('.feedback-main').toggle(400);
  });


  // When the form submission is successful
  $('#feedback-form').on('ajax:success', function (e, data, status, xhr) {
    $('.feedback-main').html('Thank you. Your feedback was recorded.');
  });
};

$(document).on("page:load ready", ready);
