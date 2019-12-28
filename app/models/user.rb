class User < ApplicationRecord
validates :username, :session_token, :password_digest, presence: true
validates :username, :session_token, uniqueness: true
validates :password, length: {minimum: 6, allow_nil: true}

attr_reader :password
after_initialize :ensure_session_token

has_one :account

has_many :investments,
through: :account,
source: :investment,
dependent: :destroy

end