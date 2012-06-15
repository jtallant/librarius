class Book < ActiveRecord::Base
  attr_accessible :author, :cover, :page_count, :title

  has_many :user_library
  has_many :users, through: :user_library
end
