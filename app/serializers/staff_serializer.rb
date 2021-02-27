class StaffSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description
end
