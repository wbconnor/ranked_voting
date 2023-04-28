# == Schema Information
#
# Table name: options
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_options_on_user_id  (user_id) WHERE (user_id IS NOT NULL)
#
class Option < ApplicationRecord
    has_and_belongs_to_many :polls
end
