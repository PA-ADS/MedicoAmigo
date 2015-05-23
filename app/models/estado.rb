class Estado < ActiveRecord::Base
	has_many :medicos
	has_many :municipios, :foreign_key => "uf", :primary_key => "uf"
end
