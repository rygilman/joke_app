class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
    	t.text :introduction
    	t.text :punch_line
    	t.integer :likes

      t.timestamps
    end
  end
end
