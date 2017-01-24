class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :priority
      t.string :shipAddress
      t.string :billAddress
      t.timestamps null: false
    end
  end
end
