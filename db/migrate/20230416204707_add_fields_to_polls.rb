class AddFieldsToPolls < ActiveRecord::Migration[7.0]
  def change
    add_column :polls, :title, :string, null: false
    add_column :polls, :description, :text, null: true
    add_column :polls, :user_id, :integer, null: true
    add_column :polls, :password, :string, null: true
    add_column :polls, :requires_logged_in, :boolean, default: false, null: false
    add_column :polls, :close_date, :date, null: true
    add_column :polls, :max_selected_options, :integer, null: true
  end
end
