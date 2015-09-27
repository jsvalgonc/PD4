# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(".cb_week").on 'change', (event) ->
    e = document.getElementById("week")
    strUser = e.options[e.selectedIndex].value
    pathArray = window.location.pathname.split('/')
    if pathArray[pathArray.length-2]=="menuweek"
      newPathname = ""
      for i in [1...pathArray.length-2]  
        newPathname += "/";
        newPathname += pathArray[i];
      r = newPathname + "/menuweek/" + strUser
    else
      r = "menuweek/" + strUser
    window.location = r