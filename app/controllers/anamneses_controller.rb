class AnamnesesController < ApplicationController
  before_action :set_anamnese, only: [:show, :edit, :update, :destroy]
  before_action :authorize
  before_action :authorize_admin_professor, only: [:create, :new, :edit, :update, :destroy,:index]
  before_action :correct_user_anamnese, only: [:show]

  # GET /anamneses
  # GET /anamneses.json
  def index
    @anamneses = Anamnese.all
  end

  # GET /anamneses/1
  # GET /anamneses/1.json
  def show
  end

  # GET /anamneses/new
  def new
    @anamnese = Anamnese.new
    @usuarios = Usuario.all
  end

  # GET /anamneses/1/edit
  def edit
    @usuarios = Usuario.all
  end

  # POST /anamneses
  # POST /anamneses.json
  def create
    @anamnese = Anamnese.new(anamnese_params)
    @usuarios = Usuario.all

    respond_to do |format|
      if @anamnese.save
        format.html { redirect_to @anamnese, notice: 'Anamnese was successfully created.' }
        format.json { render :show, status: :created, location: @anamnese }
      else
        format.html { render :new }
        format.json { render json: @anamnese.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anamneses/1
  # PATCH/PUT /anamneses/1.json
  def update
    respond_to do |format|
      if @anamnese.update(anamnese_params)
        format.html { redirect_to @anamnese, notice: 'Anamnese editada com sucesso.' }
        format.json { render :show, status: :ok, location: @anamnese }
      else
        format.html { render :edit }
        format.json { render json: @anamnese.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anamneses/1
  # DELETE /anamneses/1.json
  def destroy
    @anamnese.destroy
    respond_to do |format|
      format.html { redirect_to anamneses_url, notice: 'Anamnese was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anamnese
      @anamnese = Anamnese.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anamnese_params
      params.require(:anamnese).permit(:atividade_trabalho, :desc_atividade_trabalho, :data_exame_clinico, :descricao_exame_clinico, :cardiopatia, :cirurgia, :descricao_cirurgia, :problema_saude, :dor_corporal, :desc_dor_corporal, :lesao, :desc_lesao, :alergia, :desc_alergia, :fumante, :alcolotra, :atividade_fisica, :desc_atividade_fisica, :objetivo, :usuario_id)
    end
end
