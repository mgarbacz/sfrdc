$('#component_category').change ->
  $('#component_category option:selected').each ->
    category = $(this).val()
    # Hide all .form-partial to reset shown partial
    $('.form-partial').hide()
    # Show the chosen category
    $('#form-' + category).show()
    
    # Disable hidden form fields to not submit
    $('.form-partial:hidden').children('.control-group').children('.controls').children().each ->
      $(this).attr 'disabled', 'true'

    # Enable shown form fields to submit
    $('.form-partial:visible').children('.control-group').children('.controls').children().each ->
      $(this).removeAttr 'disabled'

$('#component_category').change()
