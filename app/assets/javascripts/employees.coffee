#=require jquery.Jcrop

showPreview = (coordinates) ->
  rx = 100 / coordinates.w
  ry = 100 / coordinates.h

  baseX = $('#avatar_full').width()
  baseY = $('#avatar_full').height()

  $('#avatar_cropped').css
    width: Math.round(rx * baseX) + 'px'
    height: Math.round(ry * baseY ) + 'px'
    marginLeft: '-' + Math.round(rx * coordinates.x) + 'px'
    marginTop: '-' + Math.round(ry * coordinates.y) + 'px'

  $('#employee_crop_x').val coordinates.x
  $('#employee_crop_y').val coordinates.y
  $('#employee_crop_w').val coordinates.w
  $('#employee_crop_h').val coordinates.h

$(window).load ->
  crop_x = $('#employee_crop_x').val()
  crop_y = $('#employee_crop_y').val()
  crop_w = $('#employee_crop_w').val()
  crop_h = $('#employee_crop_h').val()

  imageWidth = $('#avatar_full').width()
  imageHeight = $('#avatar_full').height()

  # This means we have just created the employee and have not cropped
  if crop_w is "0" && crop_h is "0"
    if imageWidth < imageHeight
      crop_x = 0
      crop_y = (imageWidth - imageHeight) / 2
      crop_w = imageWidth
      crop_h = imageWidth
    else if imageHeight < imageWidth
      crop_x = (imageWidth - imageHeight) / 2
      crop_y = 0
      crop_w = imageHeight
      crop_h = imageHeight
    else
      crop_x = 0
      crop_y = 0
      crop_w = imageWidth
      crop_h = imageHeight

  $('#avatar_full').Jcrop
    onChange: showPreview
    onSelect: showPreview
    minSize: [100, 100]
    setSelect: [crop_x, crop_y, crop_x + crop_w, crop_y + crop_h]
    aspectRatio: 1
