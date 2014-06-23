class AddSongs < ActiveRecord::Migration
  def change
  	create_table :songs do |t|
		  t.string :title
		  t.string :author
		  t.string :url
		  t.timestamp
		end
  end
end

