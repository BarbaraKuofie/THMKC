class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location, :description
end
