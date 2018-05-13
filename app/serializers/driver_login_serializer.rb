# frozen_string_literal: true

class DriverLoginSerializer < ActiveModel::Serializer
  attributes :id, :email, :token

  def token
    Rails.application.message_verifier(:signed_token).generate(object.token)
  end
end
