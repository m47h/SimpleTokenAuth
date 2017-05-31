class Transfer < ApplicationRecord
  belongs_to :user
  
  validates_presence_of :account_number_from,
                        :account_number_to,
                        :country_code_from,
                        :country_code_to,
                        :amount_pennies
  validates :account_number_from, :account_number_to, length: { is: 18 }
  validates :country_code_from, :country_code_to, length: { is: 3 }
  validates_numericality_of :amount_pennies, greater_than_or_equal_to: 0
end
