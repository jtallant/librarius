class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :category
      t.boolean :owned_by_user
      t.belongs_to :librariable, polymorphic: true

      t.timestamps
    end
    add_index :libraries, [:librariable_id, :librariable_type]
  end
end
