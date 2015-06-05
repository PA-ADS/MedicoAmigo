class SolicitacoesController < ApplicationController

  # Verifica as permissões dos usuarios
  load_and_authorize_resource

  before_action :set_solicitacao, only: [:show, :edit, :update, :destroy]

  # GET /solicitacoes
  # GET /solicitacoes.json
  def index
    @solicitacoes = Solicitacao.all
  end

  # GET /solicitacoes/1
  # GET /solicitacoes/1.json
  def show
  end

  # GET /solicitacoes/new
  def new
    @agenda = Agenda.find(params[:id])
    @solicitacao = Solicitacao.new(:instituicao_id => usuario_corrente.instituicao.id, 
      :agenda_id => @agenda.id, :data_emissao => Date.today, :status => "PE")
  end

  # GET /solicitacoes/1/edit
  def edit
  end

  # POST /solicitacoes
  # POST /solicitacoes.json
  def create
    @solicitacao = Solicitacao.new(solicitacao_params)

    respond_to do |format|
      if @solicitacao.save
        format.html { redirect_to @solicitacao, notice: 'Solicitacao was successfully created.' }
        format.json { render :show, status: :created, location: @solicitacao }
      else
        format.html { render :new }
        format.json { render json: @solicitacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitacoes/1
  # PATCH/PUT /solicitacoes/1.json
  def update
    respond_to do |format|
      if @solicitacao.update(solicitacao_params)
        format.html { redirect_to @solicitacao, notice: 'Solicitacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitacao }
      else
        format.html { render :edit }
        format.json { render json: @solicitacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitacoes/1
  # DELETE /solicitacoes/1.json
  def destroy
    @solicitacao.destroy
    respond_to do |format|
      format.html { redirect_to solicitacoes_url, notice: 'Solicitacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacao
      @solicitacao = Solicitacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitacao_params
      params.require(:solicitacao).permit(:instituicao_id, :agenda_id, :paciente_id, 
        :solicitante, :data_emissao, :data_agendamento, :hora_agendamento, :status, :descricao)
    end
end
