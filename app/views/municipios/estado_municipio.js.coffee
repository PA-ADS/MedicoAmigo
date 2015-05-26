$("#clinica_cidade").empty().append("<%= escape_javascript(render(:partial => @municipios)) %>")
$("#instituicao_cidade").empty().append("<%= escape_javascript(render(:partial => @municipios)) %>")