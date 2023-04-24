class CreateJoinTablePollOption < ActiveRecord::Migration[7.0]
  def change
    create_table :options_polls, id: :serial do |t|
      t.references :poll, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true
    end
  end
end
