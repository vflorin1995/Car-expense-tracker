class Group < ApplicationRecord

    belongs_to :user
    has_many :groupsexpenses
end
