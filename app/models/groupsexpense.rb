class Groupsexpense < ApplicationRecord
  belongs_to :expenses, class_name: 'Expense', foreign_key: 'expenses_id'
  belongs_to :groups, class_name: 'Group', foreign_key: 'group_id'
end
