class ClinicasController < ApplicationController
  
  # Verifica as permissões dos usuarios
  load_and_authorize_resource
  
  before_action :set_clinica, only: [:show, :edit, :update, :destroy]

  # GET /clinicas
  # GET /clinicas.json
  def index
    @clinicas = Clinica.accessible_by(current_ability)
  end

  # GET /clinicas/1
  # GET /clinicas/1.json
  def show
  end

  # GET /clinicas/new
  def new
    @clinica = Clinica.new
  end

  # GET /clinicas/1/edit
  def edit
  end

  # POST /clinicas
  # POST /clinicas.json
  def create
    @clinica = Clinica.new(clinica_params)
    @clinica.medico_id = usuario_corrente.medico.id

    respond_to do |format|
      if @clinica.save
        format.html { redirect_to @clinica, notice: 'Clinica criada com sucesso!' }
        format.json { render :show, status: :created, location: @clinica }
      else
        format.html { render :new }
        format.json { render json: @clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinicas/1
  # PATCH/PUT /clinicas/1.json
  def update
    respond_to do |format|
      if @clinica.update(clinica_params)
        format.html { redirect_to @clinica, notice: 'Clinica atualizada com sucesso!' }
        format.json { render :show, status: :ok, location: @clinica }
      else
        format.html { render :edit }
        format.json { render json: @clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinicas/1
  # DELETE /clinicas/1.json
  def destroy
    @clinica.destroy
    respond_to do |format|
      format.html { redirect_to clinicas_url, notice: 'Clinica excluída com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinica
      @clinica = Clinica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinica_params
      params.require(:clinica).permit(:medico_id, :nome, :telefone, :endereco, :end_numero, 
        :end_complemento, :bairro, :cidade, :uf, :cep)
    end
end
