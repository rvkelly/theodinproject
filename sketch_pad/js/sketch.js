$(document).ready(function () {
  var default_boxes_per_row = 10;
  var page_width = 960;
  var height_and_width_of_each_box = Math.round(page_width/default_boxes_per_row) - 2;

  for(var i = 1; i <= Math.pow(default_boxes_per_row, 2); i++) {
    $('.container').append('<div id="page-' + i + '"class="box"></div>');

  }
 $('.box').width(height_and_width_of_each_box);
 $('.box').height(height_and_width_of_each_box);

  $('.container > div').hover(function() {
    $(this).css('background-color', get_random_color);
  });

 $('button').click(function() {
    $('.container > div').remove();
    if(confirm("Draw new grid?"))
    {
       default_boxes_per_row = prompt("Define width of grid");
        gridulator(default_boxes_per_row);
        $('.container > div').hover(function() {
    $(this).css('background-color', get_random_color);
  });
     }
     else
     {
       $('.container').append('<h1>What to do now?</h1>');
      }
 });

});


var gridulator = function (boxes_per_row) {
  boxes_per_row = typeof boxes_per_row !== 'undefined' ? boxes_per_row : 10;
  var page_width = 960;
  var height_and_width_of_each_box = Math.round((page_width/boxes_per_row)) - 2;

  for(var i = 1; i < Math.pow(boxes_per_row, 2); i++) {
    $('.container').append('<div id="page-' + i + '"class="box"></div>');
  }
 $('.box').width(height_and_width_of_each_box);
 $('.box').height(height_and_width_of_each_box);

};

var get_random_color = function() {
    var letters = '0123456789ABCDEF'.split('');
    var color = '#';
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.round(Math.random() * 15)];
    }
    return color;
};

