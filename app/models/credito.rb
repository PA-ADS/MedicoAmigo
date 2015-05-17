class Credito < ActiveRecord::Base
	belongs_to :medico, :dependent => :destroy
end
