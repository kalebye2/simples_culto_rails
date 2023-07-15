class AddNotasToCulto < ActiveRecord::Migration[5.2]
  def change
    add_column :cultos, :notas, :text
  end
end
