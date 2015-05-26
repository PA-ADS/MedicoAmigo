# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(document).on 'change', '#clinica_uf', (evt) ->
    
    if $("#clinica_uf").val() != ''
      $('#clinica_cidade').prop("disabled", false)
    else
      $('#clinica_cidade').prop("disabled", true)

    $.ajax '/municipios/estado_municipio',
      type: 'GET'
      dataType: 'script'
      data: {
        uf: $("#clinica_uf option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")

$ ->
  $(document).on 'change', '#instituicao_uf', (evt) ->
    
    if $("#instituicao_uf").val() != ''
      $('#instituicao_cidade').prop("disabled", false)
    else
      $('#instituicao_cidade').prop("disabled", true)

    $.ajax '/municipios/estado_municipio',
      type: 'GET'
      dataType: 'script'
      data: {
        uf: $("#instituicao_uf option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")