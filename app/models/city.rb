# frozen_string_literal: true

class City < ApplicationRecord
  has_many :libraries
  has_many :users
end
