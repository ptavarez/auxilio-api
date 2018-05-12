# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :assists

  before_save :default_driver

  def default_driver
    self.driver ||= false
  end
end
