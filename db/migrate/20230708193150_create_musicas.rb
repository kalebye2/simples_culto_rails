class CreateMusicas < ActiveRecord::Migration[5.2]
  def change
    create_table :musicas do |t|
      t.string :titulo
      t.string :autor
      t.text :letra
      t.integer :ano
    end
  end
end
