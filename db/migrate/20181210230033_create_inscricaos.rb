class CreateInscricaos < ActiveRecord::Migration[5.2]
  def change
    create_table :inscricaos do |t|
      t.references :atividade, foreign_key: true
      t.references :participante, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
