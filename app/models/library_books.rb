class LibraryBooks < ActiveRecord::Base
  attr_accessible :book_id, :date_completed, :group_id, :library_id, :minutes_logged, :page_count, :pages_read, :user_id

  belongs_to :library
	belongs_to :book
	belongs_to :user
	belongs_to :club
end