

$('.welcome-info').hide();

$('.photo-block').hover(function(){
    $(this).children('a').children('.welcome-info').fadeIn();
  },function(){
    $(this).children('a').children('.welcome-info').fadeOut();
})
