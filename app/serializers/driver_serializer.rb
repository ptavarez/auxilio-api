# frozen_string_literal: true

class DriverSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at
end
