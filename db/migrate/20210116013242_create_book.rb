class CreateBook < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :page
      t.integer :price

      t.timestamps
    end
  end

  def down
    drop_table :book
  end
end
