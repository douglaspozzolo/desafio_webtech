class HistoricoLaboralsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_historico_laboral, only: [:show, :edit, :update, :destroy]
  before_action :set_pessoa_fisica_options, only:[:new, :edit, :update, :create]
  before_action :set_empregador_options, only:[:new, :edit, :update, :create]
  before_action :documento_pessoa, only:[:new, :edit, :update, :create]


  # GET /historico_laborals
  # GET /historico_laborals.json
  def index
    @historico_laborals = HistoricoLaboral.all
  end

  # GET /historico_laborals/1
  # GET /historico_laborals/1.json
  def show
  end

  # GET /historico_laborals/new
  def new
    @historico_laboral = HistoricoLaboral.new
  end

  # GET /historico_laborals/1/edit
  def edit
  end

  # POST /historico_laborals
  # POST /historico_laborals.json
  def create
    @historico_laboral = HistoricoLaboral.new(historico_laboral_params)

    respond_to do |format|
      if @historico_laboral.save
        format.html { redirect_to historico_laborals_url, notice: 'Histórico laboral foi criado com sucesso!' }
        format.json { render :show, status: :created, location: @historico_laboral }
      else
        format.html { render :new }
        format.json { render json: @historico_laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historico_laborals/1
  # PATCH/PUT /historico_laborals/1.json
  def update
    respond_to do |format|
      if @historico_laboral.update(historico_laboral_params)
        format.html { redirect_to historico_laborals_url, notice: 'Histórico laboral foi atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @historico_laboral }
      else
        format.html { render :edit }
        format.json { render json: @historico_laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historico_laborals/1
  # DELETE /historico_laborals/1.json
  def destroy
    @historico_laboral.destroy
    respond_to do |format|
      format.html { redirect_to historico_laborals_url, notice: 'Historico laboral was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def documento_pessoa
    @documento_pessoa = Documento.all.pluck(:nome, :id)
  end
  def set_empregador_options
    @empregador_options = Empregador.all.pluck(:nome, :id)
  end
  def set_pessoa_fisica_options
    @pessoa_fisica_options =  PessoaFisica.all.pluck(:nome, :id)
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_historico_laboral
      @historico_laboral = HistoricoLaboral.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historico_laboral_params
      params.require(:historico_laboral).permit(:nome_identificador, :empregador_id, :pessoa_fisica_id, :documento_id, :anos, :meses, :dias)
    end
end
