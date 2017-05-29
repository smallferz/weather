class User < ApplicationRecord
  has_secure_token :unique_identifier
  has_one :history
  validates :unique_identifier, presence: true
end
