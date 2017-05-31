require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { FactoryGirl.create(:user) }
  
  [:email, :password, :first_name, :last_name, :dob, :address_line_1].each do |var|
    it { is_expected.to validate_presence_of(var) }
  end
  it { is_expected.to validate_uniqueness_of(:email) }
  it { is_expected.to have_many(:transfers) }
end
