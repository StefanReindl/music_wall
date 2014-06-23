class User < ActiveRecord::Base
	validates :username, :password, :email, presence: true
	validates_uniqueness_of :username, :email
	has_many :songs
end