# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $("li.tweet h3.message").each ->
    message = $(@)
    initial_value = "@" + message.text().match(/(@[a-zA-Z]+)/)
    message.data("oldVal", initial_value[1])
  $("#target").bind "change keypress", ->
    target_input_field = $(@)
    $("li.tweet h3.message").each ->
      message = $(@)
      target_input_field = $('#target').val()
      if message.data("oldVal") != target_input_field
        message.data("oldVal",  target_input_field)
        message.text(message.text().replace(/@[a-zA-Z]+/g, "@" + target_input_field ))

