class Group < ApplicationRecord
  belongs_to :user
  has_many :groupsexpenses

  # validates :Name, presence: true
end
