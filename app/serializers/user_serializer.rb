class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :favorite, :password_digest
  
    has_many :tickets
    has_many :events, through: :tickets
  end
  