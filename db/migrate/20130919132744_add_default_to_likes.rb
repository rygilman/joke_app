class AddDefaultToLikes < ActiveRecord::Migration
  def up
  	remove_column :jokes, :likes
  	add_column :jokes, :likes, :integer, :default => 0

  end


  def down
  	add_column :jokes, :likes, :integer
  	remove_column :jokes, :likes
	end
end
