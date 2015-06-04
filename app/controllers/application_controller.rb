class ApplicationController < ActionController::Base
	
	# Força a checagem de autorização em todos os controladores
	check_authorization

	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	# before_filter :autorizar
	protect_from_forgery with: :exception

	helper_method :usuario_corrente

	private

		def current_ability
  			@current_ability ||= Ability.new(usuario_corrente)
		end

		def usuario_corrente
	  		@usuario_corrente ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
		end

end
