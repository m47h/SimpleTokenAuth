class User < ApplicationRecord
   has_secure_password
   
   validates_presence_of :email, :password, :first_name, :last_name, :dob, :address_line_1
end
