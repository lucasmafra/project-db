class CreateAtividades < ActiveRecord::Migration[5.2]
  def change
    create_table :atividades do |t|
      t.datetime :data_inicio, null: false
      t.datetime :data_termino, null: false
      t.string :descricao
      t.references :local, foreign_key: true
      t.string :titulo, null: false
      t.integer :total_vagas, null: false

      t.timestamps
    end
  end
end
