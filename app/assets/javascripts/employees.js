//=require jquery.Jcrop

function showPreview(coordinates) {
  var rx = 100 / coordinates.w;
  var ry = 100 / coordinates.h;

  var baseX = $('#avatar_full').width();
  var baseY = $('#avatar_full').height();

  $('#avatar_cropped').css({
    width: Math.round(rx * baseX) + 'px',
    height: Math.round(ry * baseY ) + 'px',
    marginLeft: '-' + Math.round(rx * coordinates.x) + 'px',
    marginTop: '-' + Math.round(ry * coordinates.y) + 'px'
  });

  $('#crop_x').val(coordinates.x);
  $('#crop_y').val(coordinates.y);
  $('#crop_w').val(coordinates.w);
  $('#crop_h').val(coordinates.h);
}

$(function() {
  $('#avatar_full').Jcrop({
    onChange: showPreview,
    onSelect: showPreview,
    setSelect: [0, 0, 100, 100],
    aspectRatio: 1
  });
});
