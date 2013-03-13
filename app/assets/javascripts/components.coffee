$('#component_category').change ->
  $('#component_category option:selected').each ->
    # Need to un-titleize the value of category
    category = $(this).val().toLowerCase().replace ' ', '-'
    # Hide all .form-partial to reset shown partial
    $('.form-partial').hide()
    # Show the chosen category
    $('#form-' + category).show()

$('#component_category').change()
