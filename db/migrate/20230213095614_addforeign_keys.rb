class AddforeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :groups, :users, column: :AuthorId, on_delete: :cascade
    add_foreign_key :expenses, :users, column: :AuthorId, on_delete: :cascade
    add_foreign_key :groupexpenses, :groups, column: :group_id, on_delete: :cascade
    add_foreign_key :groupexpenses, :expenses, column: :expenses_id, on_delete: :cascade
  end
end
