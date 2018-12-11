class Inscricao < ApplicationRecord
  belongs_to :atividade
  belongs_to :participante

  validates :status, presence: true

  enum status: [:pendente, :presente, :faltou]
end
