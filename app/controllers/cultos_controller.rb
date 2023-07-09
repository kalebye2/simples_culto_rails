class CultosController < ApplicationController
  before_action :set_culto, only: %i[ show new edit update destroy ]

  def index
    @cultos = Culto.all
  end

  def show
    @musicas = @culto.musicas.order(:ordem => :asc)
  end

  def new
    @culto = Culto.new
  end

  def create
    @culto = Culto.new(culto_params)
    respond_to do |format|
      if @culto.save
        format.html { redirect_to cultos_path, notice: "Culto adicionado à base de dados" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @culto.update(culto_params)
        format.html redirect_to cultos_path, notice: "Culto atualizado"
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private

  def set_culto
    @culto = Culto.find(params[:id])
  end

  def culto_params
    params.require(:culto).permit(:data, :horario)
  end
end
