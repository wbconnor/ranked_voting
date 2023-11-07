# == Schema Information
#
# Table name: rankings
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_rankings_on_user_id  (user_id)
#
class Ranking < ApplicationRecord
    belongs_to :user
    has_many :ranking_poll_option
    has_many :poll_option, through: :ranking_poll_option, source: :poll, join_table: 'options_polls'
    has_many :poll, through: :ranking_poll_option, source: :poll, join_table: 'options_polls'
end  
