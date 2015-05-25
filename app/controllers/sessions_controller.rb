class SessionsController < ApplicationController
	skip_before_filter :autorizar
	
	def new
	end

	def create
		usuario = Usuario.autenticar(params[:email], params[:password])
		if usuario
			session[:usuario_id] = usuario.id
			redirect_to root_url, :notice => "Logged in!"
		else
			flash.now.alert = "Invalid email or password"
			render "new"
		end
	end

	def destroy
		session[:usuario_id] = nil
		redirect_to root_url, :notice => "Logged out!"
	end

end