class Medico < ActiveRecord::Base
	belongs_to :especialidade
	has_one :estado
	has_many :creditos
end
