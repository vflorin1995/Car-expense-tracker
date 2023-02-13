class CreateGropuexpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :gropuexpenses do |t|

      t.timestamps
    end
  end
end
