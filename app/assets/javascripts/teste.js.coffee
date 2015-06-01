# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->    
  $('#teste_insert').on 'click',(event) ->
    alert($(this).attr('teste insert'))
    $(link).up().insert(before: 'Back')
    event.preventDefault()
