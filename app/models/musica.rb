class Musica < ApplicationRecord
  has_and_belongs_to_many :cultos
  scope :por_titulo, -> (titulo) { where("LOWER(titulo) LIKE LOWER('%#{titulo}%')") }
end
