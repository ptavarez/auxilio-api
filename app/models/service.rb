# frozen_string_literal: true

class Service < ApplicationRecord
  include PgSearch

  pg_search_scope :search_for,
                  against: %i[name description category],
                  using: { tsearch: { any_word: true, prefix: true } }
  has_many :assists
end
