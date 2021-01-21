class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :image, :description
  has_many :events

end

