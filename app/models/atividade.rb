class Atividade < ApplicationRecord
  belongs_to :local
  validates :data_inicio, :data_termino, :titulo, :total_vagas, presence: true
end
