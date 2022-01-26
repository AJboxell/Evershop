class Expense < ApplicationRecord
  validates :amount, presence: true, numericality: true
end
