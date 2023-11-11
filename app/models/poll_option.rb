# == Schema Information
#
# Table name: options_polls
#
#  id        :integer          not null, primary key
#  option_id :bigint           not null
#  poll_id   :bigint           not null
#
# Indexes
#
#  index_options_polls_on_option_id  (option_id)
#  index_options_polls_on_poll_id    (poll_id)
#
# Foreign Keys
#
#  fk_rails_...  (option_id => options.id)
#  fk_rails_...  (poll_id => polls.id)
#
class PollOption < ApplicationRecord
    self.table_name = 'options_polls'

    belongs_to :poll
    belongs_to :option
    has_many :ranks
end
