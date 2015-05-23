# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$(document).on "page:change", ->
		if $("#clinica_uf").val() != ""
			$("#clinica_cidade").prop("disabled", false)
		else
			$("#clinica_cidade").prop("disabled", true)	
	
