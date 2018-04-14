# frozen_string_literal: true

class Request < ApplicationRecord
  before_save :default_fufilled

  def default_fufilled
    self.fulfilled ||= false
  end
end
