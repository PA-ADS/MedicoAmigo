class MunicipiosController < ApplicationController

  # Verifica as permissões dos usuarios
  load_and_authorize_resource
  
  def index
  	@estados = Estado.all
  	@municipios = Municipio.where("uf = 'MG'")
  end

  def show
  	@municipios = Municipio.find_by("id = ?", params[:uf])
  end

  def estado_municipio
  	@municipios = Municipio.where("uf = ?", params[:uf])
    respond_to do |format|
  		format.js
  	end
  end

end
