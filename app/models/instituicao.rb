class Instituicao < ActiveRecord::Base
	
	before_save :tratarcnpj , on: :create

	validates_presence_of :nome, :cnpj, :responsavel, :endereco, :end_numero, :bairro,
		:cidade, :uf, :cep, :telefone
	validates :nome, :length => {:in => 2..60}
	usar_como_cnpj :cnpj
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
	has_many :solicitacoes

	accepts_nested_attributes_for :usuario

	def tratarcnpj
		write_attribute(:cnpj , self.cnpj.to_s.delete!('./-'))
	end

end
