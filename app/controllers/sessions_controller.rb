class SessionsController < ApplicationController
	
	# Ignora a verificação de autorização padrão
	skip_authorization_check
	
	def new
	end

	def create
		usuario = Usuario.autenticar(params[:email], params[:password])
		if usuario
			session[:usuario_id] = usuario.id
			redirect_to root_url, :notice => "Você entrou!"
		else
			flash.now.alert = "E-mail ou senha invalida!"
			render "new"
		end
	end

	def destroy
		session[:usuario_id] = nil
		redirect_to root_url, :notice => "Você saiu!"
	end

end