class CreateRankings < ActiveRecord::Migration[7.0]
  def change
    create_table :rankings do |t|
      t.integer :rank
      t.references :poll_option, null: false, foreign_key: { to_table: :options_polls }
      t.references :user

      t.timestamps
    end
  end
end
