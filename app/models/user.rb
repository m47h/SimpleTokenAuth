class User < ApplicationRecord
   has_secure_password
   has_many :transfers
   
   validates_presence_of :email, :password, :first_name, :last_name, :dob, :address_line_1
end
