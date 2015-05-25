class Clinica < ActiveRecord::Base
	
	# Relacionamento modelos
	belongs_to :medico
	belongs_to :municipio, :foreign_key => "cidade"
	has_many :agendas, :dependent => :destroy

	# Validações modelo
	validates :nome, :endereco, :end_numero, :bairro, 
		:cidade, :uf, :cep, :presence => true
	validates :nome, :length => {:in => 2..45}
	validates :telefone, :length => {:in => 10..11}
	validates :endereco, :length => {:maximum => 60}
	validates :end_numero, :length => {:maximum => 6}
	validates :end_complemento, :length => {:maximum => 15}
	validates :cep, :length => {:is => 8}

	def self.clinicas_medico(medico_id)
		@clinicas = Clinica.where(:medico_id => medico_id)
	end

end
