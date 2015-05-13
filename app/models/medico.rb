class Medico < ActiveRecord::Base
	belongs_to :especialidade
	has_many :creditos
end
