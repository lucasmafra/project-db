class CreateLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :locals do |t|
      t.string :endereco
      t.integer :lotacao, null: false
      t.string :nome, null: false

      t.timestamps
    end
  end
end
