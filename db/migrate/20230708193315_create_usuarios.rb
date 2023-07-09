class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :username
      t.string :password_digest
      t.boolean :admin
      t.boolean :membro
    end
  end
end
