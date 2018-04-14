class Assist < ApplicationRecord
  belongs_to :user

  before_save :default_fulfilled

  def default_fulfilled
    self.fulfilled ||= false
  end
end
