//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require activestorage

$(function() {
  console.log("ok")
  $(".slick").slick({
    slidesToShow: 1,
    slidesToScroll: 1,
  });
});


