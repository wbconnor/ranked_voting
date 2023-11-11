# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string
#  name            :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    has_many :ranks
    has_many :ranked_polls, through: :ranks, source: :poll
    has_many :created_polls, class_name: 'Poll', foreign_key: 'user_id'
end
