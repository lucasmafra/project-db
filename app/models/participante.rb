class Participante < ApplicationRecord
  validates :nome, :cpf, :email, presence: true
end
