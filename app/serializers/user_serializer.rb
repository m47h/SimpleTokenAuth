class UserSerializer < ActiveModel::Serializer
  attributes :name, :age
  
  def name
    [object.first_name, object.last_name] * " "
  end
  
  def age
    Date.today.year - object.dob.year
  end
end
