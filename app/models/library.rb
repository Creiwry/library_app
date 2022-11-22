# frozen_string_literal: true

class Library < ApplicationRecord
  belongs_to :city
  has_many :books
  has_many :accounts
  has_many :users, through: :accounts
end
