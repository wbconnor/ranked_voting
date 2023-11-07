# == Schema Information
#
# Table name: ranking_poll_options
#
#  id             :bigint           not null, primary key
#  rank           :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  poll_option_id :bigint           not null
#  ranking_id     :bigint           not null
#
# Indexes
#
#  index_ranking_poll_options_on_poll_option_id  (poll_option_id)
#  index_ranking_poll_options_on_ranking_id      (ranking_id)
#
# Foreign Keys
#
#  fk_rails_...  (poll_option_id => options_polls.id)
#  fk_rails_...  (ranking_id => rankings.id)
#
class RankingPollOption < ApplicationRecord
  belongs_to :ranking
  belongs_to :poll_option
end
