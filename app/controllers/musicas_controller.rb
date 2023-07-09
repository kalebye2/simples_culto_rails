class MusicasController < ApplicationController
  before_action :set_musica, only: %i[ show edit update destroy ]

  def index
    @musicas = Musica.order(titulo: :asc)
  end

  def show
  end

  def new
    @musica = Musica.new
  end

  def create
    @musica = Musica.new(musica_params)

    respond_to do |format|
      if @musica.save
        format.html { redirect_to musica_url(@musica), notice: "musica was successfully created." }
        format.json { render :show, status: :created, location: @musica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musica.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @musica.update(musica_params)
        format.html { redirect_to musica_url(@musica), notice: "Música atualizada" }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_musica
    @musica = Musica.find(params[:id])
  end

  def musica_params
    params.require(:musica).permit(:titulo, :autor, :letra, :ano)
  end
end
