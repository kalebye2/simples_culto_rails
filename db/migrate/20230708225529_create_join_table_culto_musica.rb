class CreateJoinTableCultoMusica < ActiveRecord::Migration[5.2]
  def change
    create_join_table :cultos, :musicas do |t|
      t.index [:culto_id, :musica_id]
      t.index [:musica_id, :culto_id]
      t.integer :ordem
    end
  end
end
