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
  })
});
// Parameters: {"utf8"=>"✓", "authenticity_token"=>"gPMejnvCQtE5mQkwVdJ8GHOtsoKJSjsHsVg14IB1gRLGVtz/g/buR1UO5d1SVt5PenkNfvaYApNcuWY1x6s8Kg==",
// "photo"=>{"image"=>#<ActionDispatch::Http::UploadedFile:0x007fb6dec87bb0
// @tempfile=#<Tempfile:/var/folders/68/91rl07y93n127bf852t7gdbr0000gn/T/RackMultipart20150625-3229-1kumf1m.jpeg>,
// @original_filename="download (2).jpeg", @content_type="image/jpeg",
// @headers="Content-Disposition: form-data; name=\"photo[image]\"; filename=\"download (2).jpeg\"\r\nContent-Type: image/jpeg\r\n">},
// "commit"=>"Upload my Image", "album_id"=>"1"}
