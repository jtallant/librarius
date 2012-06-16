class Club < ActiveRecord::Base
  attr_accessible :description, :location, :name, :rating

  has_many :memberships
	has_many :users, :through => :memberships
	has_many :libraries, :as => :librariable
	has_many :library_books
end
