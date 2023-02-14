class AddforeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :groups, :users, column: :AuthorId, on_delete: :cascade
    add_foreign_key :expenses, :users, column: :AuthorId, on_delete: :cascade
    add_foreign_key :groupsexpenses, :groups, column: :group_id, on_delete: :cascade
    add_foreign_key :groupsexpenses, :expenses, column: :expenses_id, on_delete: :cascade
  end
end
