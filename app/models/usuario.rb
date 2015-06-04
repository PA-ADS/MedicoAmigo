class Usuario < ActiveRecord::Base
	
	# Atributos
	attr_accessor :password

	# Regra de composição do email
	EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

	# Validações Modelo
	validates_presence_of :email, :email_confirmation, :password, :password_confirmation
	validates_confirmation_of :email, :password
	validates :email, :uniqueness => true
	# Valida formato do email
	validate :email_format

	# Relacionamento Modelos
	has_one :medico
	has_one :instituicao

	# Funções a serem executadas antes de salvar
	before_save :cript_senha

	private
	# Trata erro de digitação do email
	def email_format
		errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
	end

	def self.autenticar(email, password)
		usuario = find_by_email(email)
		if usuario && usuario.password_hash == BCrypt::Engine.hash_secret(password, usuario.password_salt)
			usuario
		else
			nil
		end
	end

	def cript_senha
		if password.present?
			self.password_salt = BCrypt::Engine.generate_salt
			self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
		end
	end

end