class AssistSerializer < ActiveModel::Serializer
  attributes :id, :service_id, :service, :fulfilled, :editable, :created_at

  def editable
    scope == object.user
  end
end
