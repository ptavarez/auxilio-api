class RequestSerializer < ActiveModel::Serializer
  attributes :id, :fulfilled, :date
  has_one :user
  has_one :service
end
