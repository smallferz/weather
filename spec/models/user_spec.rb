require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    expect(User.new(unique_identifier: 111111)).to be_valid
  end
end
