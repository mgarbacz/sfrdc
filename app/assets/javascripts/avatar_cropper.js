//=require jquery.Jcrop

function showPreview(coordinates) {
  var rx = 300 / coordinates.w;
  var ry = 300 / coordinates.h;

  var baseX = $('#avatar_full').width();
  var baseY = $('#avatar_full').height();

  $('#avatar_cropped').css({
    width: Math.round(rx * baseX) + 'px',
    height: Math.round(ry * baseY ) + 'px',
    marginLeft: '-' + Math.round(rx * coordinates.x) + 'px',
    marginTop: '-' + Math.round(ry * coordinates.y) + 'px'
  });
}

$(function() {
  $('#avatar_full').Jcrop({
    onChange: showPreview,
    onSelect: showPreview,
    aspectRatio: 1
  });
});
