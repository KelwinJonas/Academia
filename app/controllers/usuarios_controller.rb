class UsuariosController < ApplicationController
  before_action :correct_user?, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:new, :create]

  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
    if current_user.aluno?
      render 'show_aluno'
    elsif current_user.professor?
      render 'show_professor'
    else
      render 'show_admin'
    end
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
    if current_user.admin?
      render 'edit_admin'
    else
      render 'edit'
    end
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      redirect_to sign_in_path
    else
      render :new
    end

  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuário modificado com sucesso.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    sign_out
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Usuário foi apagado com sucesso.' }
      format.json { head :no_content }
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def usuario_params
    params.require(:usuario).permit(:nome, :email, :telefone, :data_nascimento, :password, :password_confirmation, :tipo)
  end
end
