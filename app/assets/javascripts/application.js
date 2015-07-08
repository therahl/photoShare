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
//= require masonry/jquery.masonry
//= require masonry/jquery.infinitescroll.min
//= require masonry/modernizr-transitions
//= require isotope/jquery.isotope
//= require dropzone
//= require_tree .


$(document).ready(function(){
  // disable auto discover
  Dropzone.autoDiscover = false;

  var dropzone = new Dropzone (".dropzone", {
    maxFilesize: 256, // set the maximum file size to 256 MB
    paramName: "photo[image]", // Rails expects the file upload to be something like model[field_name]
    addRemoveLinks: false // dont show remove links on dropzone itself.
  });

  dropzone.on("success", function(file) {
    this.removeFile(file);
    $.getScript("/images");
  });




});
