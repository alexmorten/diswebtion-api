class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname , :fullname
  def fullname
    object.firstname+" "+object.lastname
  end
end
