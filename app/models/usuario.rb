class Usuario < ActiveRecord::Base
	has_one :medico, :primary_key => 'email'
end
