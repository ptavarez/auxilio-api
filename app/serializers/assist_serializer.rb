class AssistSerializer < ActiveModel::Serializer
  attributes :id, :service, :fulfilled, :editable

  def editable
    scope == object.user
  end
end
