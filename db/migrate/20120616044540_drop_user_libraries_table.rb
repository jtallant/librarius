class DropUserLibrariesTable < ActiveRecord::Migration
  def up
  	drop_table :user_libraries
  end

  def down
  end
end
