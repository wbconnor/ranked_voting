class CreateRankingPollOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :ranking_poll_options do |t|
      t.references :ranking, null: false, foreign_key: true
      t.references :poll_option, null: false, foreign_key: { to_table: 'options_polls' }
      t.integer :rank

      t.timestamps
    end
  end
end
