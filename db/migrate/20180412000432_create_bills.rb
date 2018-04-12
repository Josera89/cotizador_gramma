class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.text :specifications
      t.string :company
      t.string :email
      t.integer :total
      t.datetime :deadline
      t.string :agent

      t.timestamps
    end
  end
end
