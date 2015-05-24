class Municipio < ActiveRecord::Base
	belongs_to :estado, :foreign_key => "uf", :primary_key => "uf"
	has_many :clinicas
	default_scope {order(:nome)}
end
