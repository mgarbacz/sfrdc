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

$(window).load(function() {
  var crop_x = $('#employee_crop_x').val();
  var crop_y = $('#employee_crop_y').val();
  var crop_w = $('#employee_crop_w').val();
  var crop_h = $('#employee_crop_h').val();

  var imageWidth = $('#avatar_full').width();
  var imageHeight = $('#avatar_full').height();

  // This means we have just created the employee and have not cropped
  if (crop_w == "0" && crop_h == "0") {
    if (imageWidth < imageHeight) {
      crop_x = 0;
      crop_y = (imageWidth - imageHeight) / 2;
      crop_w = imageWidth;
      crop_h = imageWidth;
    } else if (imageHeight < imageWidth) {
      console.log('second');
      crop_x = (imageWidth - imageHeight) / 2;
      crop_y = 0;
      crop_w = imageHeight;
      crop_h = imageHeight;
    } else {
      crop_x = 0;
      crop_y = 0;
      crop_w = imageWidth;
      crop_h = imageHeight;
    }
  }

  $('#avatar_full').Jcrop({
    onChange: showPreview,
    onSelect: showPreview,
    minSize: [100, 100],
    setSelect: [crop_x, crop_y, crop_x + crop_w, crop_y + crop_h],
    aspectRatio: 1
  });
});
