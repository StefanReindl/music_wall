class User < ActiveRecord::Base
	validates :username, :password, :email, presence: true
	has_many :songs
end