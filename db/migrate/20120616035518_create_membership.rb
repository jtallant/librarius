class CreateMembership < ActiveRecord::Migration
	def change
		create_table :memberships do |t|
      t.integer :user_id
      t.integer :club_id

      t.timestamps
    end
  end
end
