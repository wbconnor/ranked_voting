class CreateRankings < ActiveRecord::Migration[7.0]
  def change
    create_table :rankings do |t|
      t.references :user

      t.timestamps
    end
  end
end
