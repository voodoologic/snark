# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $(".snark-tweets li").draggable()
  $("#tweet-catch").droppable(drop: (event, ui) -> 
				$( this ).find( ".placeholder" ).remove();
				$( "<li></li>" ).text( ui.draggable.text() ).appendTo( this );
			 )
