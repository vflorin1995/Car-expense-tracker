class Groupsexpense < ApplicationRecord
    belongs_to :expense, class_name: 'Expense', foreign_key: 'expenses_id'
    belongs_to :group, class_name: 'Group', foreign_key: 'group_id'
end
