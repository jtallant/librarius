class Book < ActiveRecord::Base
  attr_accessible :author, :cover, :page_count, :title
end
