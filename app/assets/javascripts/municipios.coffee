# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

municipio_por_uf = ($element_uf, $element_cidade) ->

  if $($element_uf).val() != ''
    $($element_cidade).prop("disabled", false)
  else
    $($element_cidade).prop("disabled", true)
  
  $.ajax '/municipios/estado_municipio',
    type: 'GET'
    dataType: 'script'
    data: {
      uf: $element_uf.find("option:selected").val()
    }
    error: (jqXHR, textStatus, errorThrown) ->
      console.log("AJAX Error: #{textStatus}")

$ ->
  $(document).on 'change', '#uf_ajax', (evt) ->
    municipio_por_uf $('#uf_ajax'), $('#cidade_ajax')

$ ->
  $(document).on "page:change", ->
    if $("#uf_ajax").val() != ""
      $("#cidade_ajax").prop("disabled", false)
    else
      $("#cidade_ajax").prop("disabled", true)
