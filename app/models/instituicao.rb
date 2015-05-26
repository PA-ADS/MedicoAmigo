class Instituicao < ActiveRecord::Base

	validates_presence_of :nome, :cnpj, :responsavel, :endereco, :end_numero, :bairro,
	:cidade, :uf, :cep, :telefone, :status, :usuario_id
	validates :nome, :length => {:in => 2..60}
	validates :cnpj, :length => {:is => 14}
	
	# Relacionamento modelos
	belongs_to 	:municipio, :foreign_key => "cidade"
	belongs_to	:usuario, :dependent => :destroy
	has_one 	:estado

	accepts_nested_attributes_for :usuario
end
