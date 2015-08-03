# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#remove_fields').click -> 
    alert("bom dia 3")
    $(this).prev("input[type=hidden]").val("1") 
    $(this).closest(".field").hide()

$ ->    
  $('#add_fields2').on 'click',(event) ->
    association=$(this).attr('association')
    content=$(this).attr('fields')
    new_id = new Date().getTime()
    regexp = new RegExp("new_" + association, "g")
    $(this).parent().before(content.replace(regexp, new_id))
    event.preventDefault()

$ ->    
  $('#add_fields_prodedure').on 'click',(event) ->
    association=$(this).attr('association')
    content=$(this).attr('fields')
    new_id = new Date().getTime()
    regexp = new RegExp("new_" + association, "g")
    $(this).parent().before(content.replace(regexp, new_id))
    event.preventDefault()


$ -> 
    $("#show_hide_nutricional_label2").on 'click',(event) ->
        $("#nutritional_label").toggle()



    

    


