# frozen_string_literal: true

class RequestSerializer < ActiveModel::Serializer
  attributes :id, :service, :fulfilled
end
