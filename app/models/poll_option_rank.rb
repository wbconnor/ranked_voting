class PollOptionRank < ApplicationRecord
  belongs_to :rank
  belongs_to :poll_option
end
