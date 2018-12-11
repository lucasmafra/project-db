class CreateParticipantes < ActiveRecord::Migration[5.2]
  def change
    create_table :participantes do |t|
      t.string :cpf, null: false
      t.string :email, null: false
      t.string :nome, null: false

      t.timestamps
    end
  end
end
