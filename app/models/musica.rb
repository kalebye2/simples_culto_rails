class Musica < ApplicationRecord
  #has_and_belongs_to_many :cultos
  has_many :culto_musica_juncoes, foreign_key: :musica_id
  has_many :cultos, through: :culto_musica_juncoes
  scope :por_titulo, -> (titulo) { where("LOWER(titulo) LIKE LOWER('%#{titulo}%')") }
  scope :por_letra, -> (letra) { where("LOWER(letra) LIKE LOWER('%#{letra}%')") }
  scope :por_autor, -> (autor) { where("LOWER(autor) LIKE LOWER('%#{autor}%')") }
end
