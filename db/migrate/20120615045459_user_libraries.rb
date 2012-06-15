class UserLibraries < ActiveRecord::Migration
  def change
  	create_table :user_libraries do |t|
	  	t.integer :user_id
	  	t.integer :book_id
	  	t.boolean :currently_reading
	  	t.integer :current_page
	  	t.integer :minutes_spent_reading

	  	t.timestamps
  	end
  end
end
