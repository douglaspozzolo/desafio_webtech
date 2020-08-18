class PessoaFisicasController < ApplicationController
  before_action :set_pessoa_fisica, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /pessoa_fisicas
  # GET /pessoa_fisicas.json
  def index
    @pessoa_fisicas = PessoaFisica.all
  end

  # GET /pessoa_fisicas/1
  # GET /pessoa_fisicas/1.json
  def show
  end

  # GET /pessoa_fisicas/new
  def new
    @pessoa_fisica = PessoaFisica.new
  end

  # GET /pessoa_fisicas/1/edit
  def edit
  end

  # POST /pessoa_fisicas
  # POST /pessoa_fisicas.json
  def create
    @pessoa_fisica = PessoaFisica.new(pessoa_fisica_params)

    respond_to do |format|
      if @pessoa_fisica.save
        format.html { redirect_to pessoa_fisicas_path	, notice: 'Segurado criado com sucesso!' }
        format.json { render :show, status: :created, location: @pessoa_fisica }
      else
        format.html { render :new }
        format.json { render json: @pessoa_fisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoa_fisicas/1
  # PATCH/PUT /pessoa_fisicas/1.json
  def update
    respond_to do |format|
      if @pessoa_fisica.update(pessoa_fisica_params)
        format.html { redirect_to pessoa_fisicas_path	, notice: 'Segurado atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @pessoa_fisica }
      else
        format.html { render :edit }
        format.json { render json: @pessoa_fisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoa_fisicas/1
  # DELETE /pessoa_fisicas/1.json
  def destroy
    @pessoa_fisica.destroy
    respond_to do |format|
      format.html { redirect_to pessoa_fisicas_url, notice: 'Pessoa fisica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa_fisica
      @pessoa_fisica = PessoaFisica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pessoa_fisica_params
      params.require(:pessoa_fisica).permit(:nome, :cpf, :nome_da_mae, :nit)
    end
end
