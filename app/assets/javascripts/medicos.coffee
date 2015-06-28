# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'keypress', '#medico_telefone', (evt) ->
	if this.value != this.value.replace(/[^0-9\.]/g, '')
       this.value = this.value.replace(/[^0-9\.]/g, '')
