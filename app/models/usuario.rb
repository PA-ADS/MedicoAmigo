class Usuario < ActiveRecord::Base
	
	# Regra de composição do email
	EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

	# Validações Modelo
	validates_presence_of :email, :email_confirmation, :password
	validates_confirmation_of :email
	validates :email, :uniqueness => true
	# Valida formato do email
	validate :email_format

	# Relacionamento Modelos
	has_one :medico
	
	private
	# Trata erro de digitação do email
	def email_format
		errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
	end

end
