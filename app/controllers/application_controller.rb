class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	before_filter :autorizar
	protect_from_forgery with: :exception

	helper_method :usuario_corrente

	private

		def usuario_corrente
	  		@usuario_corrente ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
		end

	protected

		def autorizar
			unless Usuario.find_by_id(session[:usuario_id])
				redirect_to log_in_path, :notice => "Please Log in"							
			end			
		end

end
