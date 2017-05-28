class User < ApplicationRecord
  has_one :history
  validates :unique_identifier, presence: true
end
