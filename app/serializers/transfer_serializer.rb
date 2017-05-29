class TransferSerializer < ActiveModel::Serializer
  attributes :account_number_from,
             :account_number_to,
             :country_code_from,
             :country_code_to,
             :amount_pennies
             
  belongs_to :user
end
