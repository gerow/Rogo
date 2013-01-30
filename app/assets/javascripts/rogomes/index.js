fade_new_html = function(field, new_html) {
  field.animate({opacity: 0}, 500, function() {
    field.html(new_html);
    field.animate({opacity: 1},500);
  });
}

var question_response_form = '<form action="/questions/%%QID%%/answer" method="post"><input type="text" name="answer"><input type="submit" value="Submit"></form>' 

$('document').ready(function() {
  if ($('body.rogomes').length) {
    $('div.creator_answer').click(function(){
      $(this).unbind('click')
      fade_new_html($(this), question_response_form.replace("%%QID%%", $(this).attr('id')))
    });
  }
});
