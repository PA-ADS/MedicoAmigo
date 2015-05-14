class Medico < ActiveRecord::Base
	## Regra de composição do email
	EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
	
	## Obriga preenchimento dos campos
	validates_presence_of :nome, :cpf, :crm, :crm_uf, :email, :especialidade_id
	validates_confirmation_of :email
	
	## Relacionamento das tabelas
	belongs_to 	:especialidade
	belongs_to	:usuario ,:class_name =>"Usuario", :foreign_key => "email" 
	has_one 	:estado		
	has_many 	:creditos
	

	## valida formato do email
	validate :email_format
	
	private
	## Trata erro de digitação do email
	def email_format
		errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
	end

end
