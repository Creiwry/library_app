# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

City.destroy_all
Library.destroy_all
User.destroy_all
Account.destroy_all
BorrowedBooksRecord.destroy_all
Book.destroy_all

10.times do
  City.create(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip
  )
end

10.times do
  Library.create(
    name:,
    address:,
    city: City.all.sample
  )
end

10.times do
  User.create(
    email: Faker::Internet.email,
    age: Faker::Number.between(from: 18, to: 100),
    city: City.all.sample
  )
end

200.times do
  Book.create(
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    available: true,
    library: Library.all.sample
  )
end
