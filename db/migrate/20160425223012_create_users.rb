class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string "username"
      t.string "password"
      t.string "email"
      t.boolean "admin", :default => false

      t.timestamps null: false
    end
  end

  def down 
  	drop_table :users
  end
end
