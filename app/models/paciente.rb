class Paciente < ActiveRecord::Base
	
	before_save :tratarcpf , on: :create

	# Validações modelo
	validates :nome, :cpf, :endereco, :end_numero, :complemento, 
		:bairro, :cidade, :uf, :cep, :telefone, :presence => true
	validates :nome, :endereco, :length => {:maximum => 60}
	validates :cpf, :length => {:is => 11}
	usar_como_cpf :cpf
	validates :end_numero, :length => {:maximum => 6}
	validates :complemento, :length => {:maximum => 15}
	validates :bairro, :length => {:maximum => 45}
	validates :uf, :length => {:is => 2}
	validates :cep, :length => {:is => 8}
	validates :telefone, :length => {:in => 10..11}
	
	# Associação entre modelos
	belongs_to :municipio, :foreign_key => "cidade"
	has_many :solicitacoes

	def tratarcpf
		write_attribute(:cpf , self.cpf.to_s.delete!('.-'))
	end

end
