class Medico < ActiveRecord::Base
	after_validation :tratarcpf , on: :create

	
	## Validação de campos do formulario
	validates_presence_of :nome, :cpf, :crm, :crm_uf, :especialidade_id
	validates :nome, :length => {:in => 2..60}
	usar_como_cpf :cpf
	validates_uniqueness_of :cpf
	validates :crm, :length => {:maximum => 10}

	
	## Relacionamento das tabelas
	belongs_to 	:especialidade
	belongs_to	:usuario, :dependent => :destroy
	has_one 	:estado
	has_many 	:creditos, :dependent => :destroy
	has_many	:clinicas, :dependent => :destroy
	has_many	:agendas, :dependent => :destroy

	accepts_nested_attributes_for :usuario

	def tratarcpf
		write_attribute(:cpf , self.cpf.to_s.delete!('.-'))
		
		puts "teste"
		puts cpf
	end

end
