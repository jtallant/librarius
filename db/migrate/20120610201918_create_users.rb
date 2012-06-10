class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :username
      t.string :password
      t.string :city
      t.string :state
      t.string :photo
      t.text :books
      t.text :groups

      t.timestamps
    end
  end
end
