class PollOption < ApplicationRecord
    self.table_name = 'options_polls'

    belongs_to :poll
    belongs_to :option
  
    has_many :ranks, dependent: :destroy
end
