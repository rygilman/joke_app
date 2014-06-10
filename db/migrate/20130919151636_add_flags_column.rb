class AddFlagsColumn < ActiveRecord::Migration
  def up
  	add_column :jokes, :flags, :integer, :default => 0
  end


  def down
  	remove_column :jokes, :flags, :integer, :default => 0
	end
end
