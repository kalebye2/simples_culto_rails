class Culto < ApplicationRecord
  has_and_belongs_to_many :musicas
end