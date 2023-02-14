class Expense < ApplicationRecord
  belongs_to :user
  has_many :groupsexpenses

  validates :Name, presence: true
  validates :Amount, presence: true
  validates :Amount, numericality: { greater_than_or_equal_to: 0 }
end
