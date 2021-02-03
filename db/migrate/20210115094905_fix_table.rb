class FixTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :dompets, :value, :money
  end
end
