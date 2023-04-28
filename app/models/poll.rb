# == Schema Information
#
# Table name: polls
#
#  id                   :bigint           not null, primary key
#  close_date           :date
#  description          :text
#  max_selected_options :integer
#  password             :string
#  requires_logged_in   :boolean          default(FALSE), not null
#  title                :string           not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  user_id              :integer
#
# Indexes
#
#  index_polls_on_user_id  (user_id) WHERE (user_id IS NOT NULL)
#
class Poll < ApplicationRecord
    has_and_belongs_to_many :options
    accepts_nested_attributes_for :options
end
