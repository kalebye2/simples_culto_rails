class CreateJoinTableCultoMusica < ActiveRecord::Migration[5.2]
  def change
    create_table :culto_musica_juncoes do |t|
      t.integer :culto_id
      t.integer :musica_id
      t.index [:culto_id, :musica_id]
      t.index [:musica_id, :culto_id]
      t.integer :ordem
    end
  end
end
