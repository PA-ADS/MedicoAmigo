class Agenda < ActiveRecord::Base

	# Associações entre os modelos
	belongs_to :medico
	belongs_to :clinica
	has_many :solicitacoes

	# Validações do modelo
	validates :quantidade, :clinica_id, :presence => true
	validates :quantidade, :numericality => {:only_integer => true, :greater_than => 0}
	
end
