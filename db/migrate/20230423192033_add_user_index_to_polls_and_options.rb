class AddUserIndexToPollsAndOptions < ActiveRecord::Migration[7.0]
  def change
    add_index :polls, :user_id, where: "user_id IS NOT NULL"

    add_column :options, :user_id, :integer
    add_index :options, :user_id, where: "user_id IS NOT NULL"
  end
end
