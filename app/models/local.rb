class Local < ApplicationRecord
  validates :lotacao, :nome, presence: true
end
