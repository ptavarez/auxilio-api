# frozen_string_literal: true

class Driver < ApplicationRecord
  include Authentication
  has_many :assists
end
