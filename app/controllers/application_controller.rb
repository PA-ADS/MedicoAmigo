class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	helper_method :usuario_corrente

	private

	def usuario_corrente
  		@usuario_corrente ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
	end

end
