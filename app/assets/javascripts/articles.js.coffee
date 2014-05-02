# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

updateCountdown = ->
  remaining = 140 - jQuery("#switbox").val().length
  jQuery("#count").text remaining + " characters remaining"
  jQuery("#count").css "color", (if (remaining < 10)  then "red")




jQuery ->
  updateCountdown()
  $("#switbox").change updateCountdown
  $("#switbox").keyup updateCountdown

#$.ajax(url: "/test").done (html) ->
 # $("#results").append html


