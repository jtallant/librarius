class CreateLibraryBooks < ActiveRecord::Migration
  def change
    create_table :library_books do |t|
      t.integer :book_id
      t.integer :library_id
      t.integer :user_id
      t.integer :group_id
      t.datetime :date_completed
      t.integer :pages_read
      t.integer :page_count
      t.integer :minutes_logged

      t.timestamps
    end
  end
end
