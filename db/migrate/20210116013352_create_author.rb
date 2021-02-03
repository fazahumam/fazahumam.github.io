class CreateAuthor < ActiveRecord::Migration[6.0]
  def up
    create_table :authors do |t|
      t.string :name
      t.integer :age
      t.string :address

      t.timestamps
    end
  end

  def down
    drop_table :author
  end
end
