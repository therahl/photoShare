

$(document).imagesLoaded( function() {
  var $grid = $('#masonry-container').masonry({
        itemSelector: '.pic',
        columnWidth: 100,
        //gutterWidth: 10,
        isAnimated: !Modernizr.csstransitions,
        //isFitWidth: true
    });


    $grid.on( 'click', '.clickme', function() {
      $(this).next('.info').toggle();
      $grid.masonry();
    });

});

$('.info').hide();
$('.remove').hide();
$('.pic').hover(function(){
    $(this).children('.remove').show();
  },function(){
    $('.remove').hide();
})
