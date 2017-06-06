require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

RSpec.describe History, type: :model do
  # it { is_expected.to validate_presence_of(:city) }

  it "is valid with valid attributes" do
    user = User.create(unique_identifier: 111111)
    expect(History.new(city: ['Cherkassy'], user_id: 1)).to be_valid
  end

  # it "has a valid factory" do
  #   expect(history).to be_valid
  # end
end
