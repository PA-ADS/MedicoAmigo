module InstituicoesHelper
	def situacaoInstituicao status
		if  status == "A"
			"Ativa"
		elsif status == "B"
			"Bloqueada"
		else
			""
		end
	end
end
