class CreateGroupsexpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :groupsexpenses do |t|
      t.integer :group_id
      t.integer :expenses_id
      t.timestamps
    end
  end
end
