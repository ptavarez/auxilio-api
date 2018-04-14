class RequestSerializer < ActiveModel::Serializer
  attributes :id, :fulfilled, :date, :editable
  has_one :user
  has_one :service

  def editable
    scope == object.user
  end
end
