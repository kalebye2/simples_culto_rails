class ApplicationController < ActionController::Base
  def index
    #@ultimo_culto = Culto.last
    #@ultimo_culto = Culto.find_by(data: Date.today, horario: [])
    @cultos_de_hoje = Culto.where(data: Date.today)
    @proximos_cultos = Culto.proximos
    @ultimo_culto = @proximos_cultos.find_by(data: Date.today, horario: (Time.now - 3.hour)..Float::INFINITY) || @proximos_cultos.first
  end
end
