class Groupsexpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :groupexpenses do |t|
      t.integer :group_id
      t.integer :expenses_id
    end
  end
end
