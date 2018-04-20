class AddIvaToBills < ActiveRecord::Migration[5.1]
  def change
    add_column :bills, :totalIva, :integer
  end
end
