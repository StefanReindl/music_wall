class Song < ActiveRecord::Base
	validates :url, :author, :title, presence: true
	belongs_to :user
end