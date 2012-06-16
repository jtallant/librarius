class User < ActiveRecord::Base
  has_many :user_library
  has_many :books, through: :user_library

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :state, :city, :provider, :uid, :image
  # attr_accessible :title, :body

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
	  # user = User.where(:provider => auth.provider, :uid => auth.uid, :email => auth.info.email).first
	  user = User.find_by_email(auth.info.email)
	  if user && user.provider != nil
	  	user.provider = auth.provider
	  	user.uid = auth.uid
	  	user.image = auth.info.image.split("=")[0] << "=large"
	  	user.username = auth.extra.raw_info.name
	  	user.save
	  else
	    user = User.create(username:auth.extra.raw_info.name,
	                         provider:auth.provider,
	                         uid:auth.uid,
	                         email:auth.info.email,
	                         password:Devise.friendly_token[0,20],
	                         image:auth.info.image.split("=")[0] << "=large"
	                         )
	  end
	  user
	end
end