class ValidaCpf < ActiveModel::Validator
	
	def ValidaCpf(record, attribute, value)
		return if value.nil?
		record.errors.add attribute, :invalid unless verifica_numero
	end

	private
		def check_cpf cpf
			cpf.each do |digit|
				digit.to_i * count
			end
		end

		def verifica_numero
			limpo = value.gsub(/[\.\/-]/, "")
			return false if limpo.length != 11
			return false if !limpo.kind_of ? (fixnum)
			return false if limpo[10] <> verifica_primeiro_digito(limpo)
			return false if limpo[11] <> verifica_segundo_digito(limpo)
		end

		def verifica_primeiro_digito cpf
			soma = 0
			cpf[0..8].each_with_index |digito, index| do
				soma = digito.to_i * (10 - index)
			end
			
			if soma % 11 > 2
				11 - (soma % 11)
			else
				0
			end
		end

		def verifica_segundo_digito cpf
			soma = 0
			cpf[0..9].each_with_index |digito, index| do
				soma = digito.to_i * (11 - index)
			end
			if soma % 11 >= 2
				11 - (soma % 11)
			else
				0
			end
		end 

end