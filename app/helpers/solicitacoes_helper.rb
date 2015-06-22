module SolicitacoesHelper
	def format_time time
		if time != nil
			time.to_s(:time)
		end
	end
end
