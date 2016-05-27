class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :description
      t.string :country 
      t.string :state
      t.string :gender
      t.string :prefer_gender
      t.string :prefer_country
      t.string :prefer_state
      t.integer :prefer_start_age
      t.integer :prefer_end_age
      t.timestamps null: false
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
      t.integer :room_id
    end

    add_index :users, :email
    add_index :users, :remember_token
  end
end
