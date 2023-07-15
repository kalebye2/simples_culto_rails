class CultoMusicaJuncao < ApplicationRecord
  belongs_to :culto, foreign_key: :culto_id
  belongs_to :musica, foreign_key: :musica_id
end
