fade_new_html = function(field, new_html) {
  field.animate({opacity: 0}, 500, function() {
    field.html(new_html);
    field.animate({opacity: 1},500);
  });
}

$('document').ready(function() {
  if ($('body.rogomes').length) {
    $('div.creator_answer').click(function(){
      $(this).unbind('click')
      fade_new_html($(this), "WHATEVA</br></br>WHATEVAELSE")
    });
  }
});
