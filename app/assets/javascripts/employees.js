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

  $('#employee_crop_x').val(coordinates.x);
  $('#employee_crop_y').val(coordinates.y);
  $('#employee_crop_w').val(coordinates.w);
  $('#employee_crop_h').val(coordinates.h);
}

$(function() {
  var crop_x = $('#employee_crop_x').val();
  var crop_y = $('#employee_crop_y').val();
  var crop_w = $('#employee_crop_w').val();
  var crop_h = $('#employee_crop_h').val();

  $('#avatar_full').Jcrop({
    onChange: showPreview,
    onSelect: showPreview,
    setSelect: [crop_x, crop_y, crop_x + crop_w, crop_y + crop_h],
    aspectRatio: 1
  });
});
