class AddBrandToDompet < ActiveRecord::Migration[6.0]
  def change
    add_column :dompets, :brand, :string
  end
end
