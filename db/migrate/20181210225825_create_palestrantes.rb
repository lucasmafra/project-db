class CreatePalestrantes < ActiveRecord::Migration[5.2]
  def change
    create_table :palestrantes do |t|
      t.string :bio
      t.string :cpf, null: false
      t.string :email, null: false
      t.string :nome, null: false

      t.timestamps
    end
  end
end
