$(document).on('turbolinks:load', function () {
  $(".star-rating-no-edit").raty({
    readOnly: true,
    path: '/assets/',
    score: function () {
      return $(this).attr('data-score');
    }
  });
  $(".star-rating-edit").raty({
    path: '/assets/',
    scoreName: 'review[rating]'
  });
})
