# == Schema Information
#
# Table name: poll_option_ranks
#
#  id             :bigint           not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  poll_option_id :bigint           not null
#  rank_id        :bigint           not null
#  user_id        :integer
#
# Indexes
#
#  index_poll_option_ranks_on_poll_option_id  (poll_option_id)
#  index_poll_option_ranks_on_rank_id         (rank_id)
#  index_poll_option_ranks_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (poll_option_id => options_polls.id)
#  fk_rails_...  (rank_id => ranks.id)
#
class PollOptionRank < ApplicationRecord
  belongs_to :rank
  belongs_to :poll_option
end
