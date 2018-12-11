class Palestrante < ApplicationRecord
  validates :nome, :cpf, :email, presence: true
end
