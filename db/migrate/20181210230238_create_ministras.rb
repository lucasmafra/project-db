class CreateMinistras < ActiveRecord::Migration[5.2]
  def change
    create_table :ministras do |t|
      t.references :atividade, foreign_key: true
      t.references :palestrante, foreign_key: true

      t.timestamps
    end
  end
end
