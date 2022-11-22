class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.boolean :available
      t.belongs_to :library
      t.belongs_to :account, optional: true

      t.timestamps
    end
  end
end
