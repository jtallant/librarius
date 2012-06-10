class User < ActiveRecord::Base
  attr_accessible :books, :city, :first, :groups, :last, :password, :photo, :state, :username
end
