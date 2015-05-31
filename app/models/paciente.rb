class Paciente < ActiveRecord::Base

	# Validações modelo
	validates :nome, :cpf, :endereco, :end_numero, :complemento, 
		:bairro, :cidade, :uf, :cep, :telefone, :presence => true
	validates :nome, :endereco, :length => {:maximum => 60}
	validates :cpf, :length => {:is => 11}
	validates :end_numero, :length => {:maximum => 6}
	validates :complemento, :length => {:maximum => 15}
	validates :bairro, :length => {:maximum => 45}
	validates :state, :length => {:is => 2}
	validates :cep, :length => {:is => 8}
	validates :telefone, :length => {:in => 10..11}
	
	# Associação entre modelos
	belongs_to :municipio, :foreign_key => "cidade"

end
