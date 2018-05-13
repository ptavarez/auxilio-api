# frozen_string_literal: true

class DriverSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at
  has_many :assists
end
