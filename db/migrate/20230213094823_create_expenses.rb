class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.integer :AuthorId
      t.string :Name
      t.integer :Amount

      t.timestamps
    end
  end
end
