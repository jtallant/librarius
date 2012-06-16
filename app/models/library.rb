class Library < ActiveRecord::Base
  attr_accessible :category, :librariable, :librariable, :owned_by_user

  belongs_to :librariable, polymorphic: true
	has_many :library_books
	has_many :books, :through => :library_books
end