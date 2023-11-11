# == Schema Information
#
# Table name: ranks
#
#  id             :bigint           not null, primary key
#  position       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  poll_option_id :bigint           not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_ranks_on_poll_option_id  (poll_option_id)
#  index_ranks_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (poll_option_id => options_polls.id)
#  fk_rails_...  (user_id => users.id)
#
class Rank < ApplicationRecord
  belongs_to :user
  belongs_to :poll_option
  has_one :poll, through: :poll_option
end
