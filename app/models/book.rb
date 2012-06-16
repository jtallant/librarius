class Book < ActiveRecord::Base
  attr_accessible :author, :cover, :page_count, :title

  has_many :library_books
	has_many :users, :through => :library_books
end