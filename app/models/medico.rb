class Medico < ActiveRecord::Base
	
	## Obriga preenchimento dos campos
	validates_presence_of :nome, :cpf, :crm, :crm_uf, :especialidade_id
	
	## Relacionamento das tabelas
	belongs_to 	:especialidade
	belongs_to	:usuario, :dependent => :destroy
	has_one 	:estado
	has_many 	:creditos

	accepts_nested_attributes_for :usuario

end
