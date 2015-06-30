module SolicitacoesHelper
	def format_time time
		if time != nil
			time.to_s(:time)
		end
	end

	def situacao status
		if  status == "PE"
			"Pendente"
		elsif status == "AP"
			"Aprovada"
		elsif status == "RJ"
			"Rejeitada"
		elsif status == "FS"
			"Finalizada sucesso"
		elsif status == "FN"
			"Finalizada s/ sucesso"
		else
			""
		end
	end
	
end
