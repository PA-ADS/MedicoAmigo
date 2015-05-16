class Medico < ActiveRecord::Base
	
	## Validação de campos do formulario
	validates_presence_of :nome, :cpf, :crm, :crm_uf, :especialidade_id
	validates :nome, :length => {:in => 2..60}
	validates :cpf, :length => {:is => 11}
	validates :crm, :length => {:maximum => 10}

	
	## Relacionamento das tabelas
	belongs_to 	:especialidade
	belongs_to	:usuario, :dependent => :destroy
	has_one 	:estado
	has_many 	:creditos

	accepts_nested_attributes_for :usuario

end
