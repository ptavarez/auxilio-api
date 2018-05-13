class AssistSerializer < ActiveModel::Serializer
  attributes :id, :service, :fulfilled, :editable, :driver_id,
             :created_at

  def editable
    scope == object.user
  end
end
