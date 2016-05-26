class Matches < ActiveRecord::Migration
  def change
  	create_table :matches do |t|
  		t.integer :user_id
  		t.integer :room_id
  	end
  end
end
