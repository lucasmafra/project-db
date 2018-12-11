class Atividade < ApplicationRecord
  validates :data_inicio, :data_termino, :titulo, :total_vagas, presence: true
end
