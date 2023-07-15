class Culto < ApplicationRecord
  #has_and_belongs_to_many :musicas
  has_many :culto_musica_juncoes, foreign_key: :culto_id
  has_many :musicas, through: :culto_musica_juncoes
  scope :proximos, -> (data: Date.today, horario: Time.now - 3.hour) {
    where(data: data..Float::INFINITY)
  }

  def descricao
    "#{data.strftime("%d/%m/%Y")} às #{horario.strftime("%Hh%M")}"
  end
=begin
  def to_param
    "#{data}_#{horario.strftime("%H:%M")}"
  end
=end
end
