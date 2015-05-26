class Municipio < ActiveRecord::Base
	# Relacionamento modelos
	belongs_to :estado, :foreign_key => "uf", :primary_key => "uf"
	has_many :clinicas
	has_many :instituicoes
	default_scope {order(:nome)}
end
