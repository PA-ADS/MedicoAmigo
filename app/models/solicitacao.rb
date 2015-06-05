class Solicitacao < ActiveRecord::Base

	# Associação modelos
	belongs_to :instituicao
	belongs_to :agenda
	belongs_to :paciente

end
