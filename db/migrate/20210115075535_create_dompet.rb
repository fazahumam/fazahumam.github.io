class CreateDompet < ActiveRecord::Migration[6.0]
  def change
    create_table :dompets do |t|
      t.integer :value
      t.integer :user_id

      t.timestamps
    end
  end
end
