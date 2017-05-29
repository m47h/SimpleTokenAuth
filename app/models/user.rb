class User < ApplicationRecord
   has_secure_password
   has_many :transfers
   
   validates_presence_of :password,
                         :first_name,
                         :last_name,
                         :dob,
                         :address_line_1,
                         :email
   validates :email, uniqueness: true
end
