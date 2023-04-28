# == Schema Information
#
# Table name: ranks
#
#  id         :bigint           not null, primary key
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Rank < ApplicationRecord
  belongs_to :user, optional: true
end
