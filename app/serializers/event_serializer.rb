class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :performer_name, :description, :image, :event_type

  belongs_to :venue
end
