class Group < ApplicationRecord
  belongs_to :Author, class_name: 'User', foreign_key: 'AuthorId'
  has_many :groupsexpenses

  validates :Name, presence: true
  validates :Icon, presence: true
end
