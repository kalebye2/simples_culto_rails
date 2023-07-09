class CultosMusicas < ApplicationRecord
  has_many :cultos
  has_many :musicas
end
