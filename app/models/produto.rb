class Produto < ActiveRecord::Base

  belongs_to :departamento

  validates :preco, :departamento, presence: true
  validates :nome, length: { minimum: 4 }
end
