# frozen_string_literal: true

class Account < ApplicationRecord
  belongs_to :user
  has_many :borrowed_books_record
  has_many :books, through: :borrowed_books_record
end
