// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-editable
//= require bootstrap-editable-rails
//= require masonry/jquery.masonry
//= require masonry/jquery.infinitescroll.min
//= require masonry/modernizr-transitions
//= require isotope/jquery.isotope
//= require dropzone
//= require_tree .


$(document).ready(function(){
  // disable auto discover

  $.fn.editable.defaults.mode = 'inline';
  $('.title').editable();
  $('.description').editable({rows: 10});

  $('a.info').click(function(e){
    e.preventDefault();
  });


});
