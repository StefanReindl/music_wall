class Song < ActiveRecord::Base
	validates :url, :author, :title, presence: true
end