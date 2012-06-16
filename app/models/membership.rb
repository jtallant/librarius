class Membership < ActiveRecord::Base
  # attr_accessible :user_id, :club_id

  belongs_to :club
	belongs_to :user
end
