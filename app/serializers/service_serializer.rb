class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category, :image
end
