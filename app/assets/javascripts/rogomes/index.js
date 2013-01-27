$('document').ready(function() {
  if ($('body.rogomes').length) {
    $('div.creator_answer').click(function(){
      $(this).unbind('click')
      $(this).animate({opacity: 0}, 500, function() {
        $(this).html("BLAHAHA");
        $(this).animate({opacity: 1},500);
      });
    });
  }
});
