class CreateJoinTablePollOption < ActiveRecord::Migration[7.0]
  def change
    create_join_table :polls, :options do |t|
      t.index :poll_id
      t.index :option_id
    end
  end
end
