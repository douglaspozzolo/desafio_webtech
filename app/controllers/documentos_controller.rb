class DocumentosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_documento, only: [:show, :edit, :update, :destroy]
  before_action :set_pessoa_fisica_options, only:[:new, :edit, :update, :create]

  # GET /documentos
  # GET /documentos.json
  def index
    @documentos = Documento.all
  end

  # GET /documentos/1
  # GET /documentos/1.json
  def show
  end

  # GET /documentos/new
  def new
    @documento = Documento.new
  end

  # GET /documentos/1/edit
  def edit
  end

  # POST /documentos
  # POST /documentos.json
  def create
    @documento = Documento.new(documento_params)

    respond_to do |format|
      if @documento.save
        format.html { redirect_to new_historico_laboral_path(documento_id: @documento.id, acao: 'docs')}
        format.json { render :show, status: :created, location: @documento }
      else
        format.html { render :new }
        format.json { render json: @documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documentos/1
  # PATCH/PUT /documentos/1.json
  def update
    respond_to do |format|
      if @documento.update(documento_params)
        format.html { redirect_to documentos_url, notice: 'Documento foi atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @documento }
      else
        format.html { render :edit }
        format.json { render json: @documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentos/1
  # DELETE /documentos/1.json
  def destroy
    @documento.destroy
    respond_to do |format|
      format.html { redirect_to documentos_url, notice: 'Documento excluído com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
  def set_pessoa_fisica_options
    @pessoa_fisica_options =  PessoaFisica.all.pluck(:nome, :id)
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_documento
      @documento = Documento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def documento_params
      params.require(:documento).permit(:nome, :doc, :pessoa_fisica_id, :id)
    end
end
