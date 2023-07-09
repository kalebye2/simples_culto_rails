class CreateCultos < ActiveRecord::Migration[5.2]
  def change
    create_table :cultos do |t|
      t.date :data
      t.time :horario
    end
  end
end
