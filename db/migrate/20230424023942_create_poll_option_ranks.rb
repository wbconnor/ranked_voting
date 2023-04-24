class CreatePollOptionRanks < ActiveRecord::Migration[7.0]
  def change
    create_table :poll_option_ranks do |t|
      t.references :rank, null: false, foreign_key: true
      t.references :poll_option, null: false, foreign_key: { to_table: :options_polls }
      t.integer :user_id

      t.timestamps
    end
    add_index :poll_option_ranks, :user_id
  end
end
