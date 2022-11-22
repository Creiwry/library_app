class CreateBorrowedBooksRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :borrowed_books_records do |t|
      t.belongs_to :account
      t.belongs_to :books
      t.belongs_to :library
      t.datetime :due_date
      t.datetime :date_borrowed

      t.timestamps
    end
  end
end
