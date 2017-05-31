require 'rails_helper'

RSpec.describe Transfer, type: :model do
  [:account_number_from, :account_number_to, :country_code_from, :country_code_to, :amount_pennies].each do |var|
    it { is_expected.to validate_presence_of(var) }
  end
  [:account_number_from, :account_number_to].each do |var|
    it { should validate_length_of(var).is_equal_to(18) }
  end
  [:country_code_from, :country_code_to].each do |var|
    it { should validate_length_of(var).is_equal_to(3) }
  end
  it { should validate_numericality_of(:amount_pennies).is_greater_than_or_equal_to(0) }
  it { is_expected.to belong_to(:user) }
end


