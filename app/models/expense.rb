class Expense < ApplicationRecord
  belongs_to :Author, class_name: 'User', foreign_key: 'AuthorId'
  has_many :groupsexpenses

  validates :Name, presence: true
  validates :Amount, presence: true
  validates :Amount, numericality: { greater_than_or_equal_to: 0 }
end
