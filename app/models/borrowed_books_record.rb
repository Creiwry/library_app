# frozen_string_literal: true

class BorrowedBooksRecord < ApplicationRecord
  belongs_to :account
  belongs_to :book
  belongs_to :library
end
