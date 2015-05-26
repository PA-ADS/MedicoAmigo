class Instituicao < ActiveRecord::Base

	validates_presence_of :nome, :cnpj, :responsavel, :endereco, :end_numero, :bairro,
		:cidade, :uf, :cep, :telefone
	validates :nome, :length => {:in => 2..60}
	validates :cnpj, :length => {:is => 14}
	validates :telefone, :length => {:in => 10..11}
	validates :responsavel, :endereco, :length => {:maximum => 60} 
	validates :end_numero, :length => {:maximum => 6}
	validates :complemento, :length => {:maximum => 15}
	validates :bairro, :length => {:maximum => 45}
	validates :cep, :length => {:maximum => 8}

	# Relacionamento modelos
	belongs_to 	:municipio, :foreign_key => "cidade"
	belongs_to	:usuario, :dependent => :destroy
	has_one 	:estado

	accepts_nested_attributes_for :usuario
end
