class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :performer_name, :description, :image

  belongs_to :venue
end
