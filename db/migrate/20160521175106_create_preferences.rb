class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
    	t.string :avatar
    	t.string :nick_name
    	t.integer :age
    	t.string :country
    	t.string :state
    	t.string :description
    	t.string :gender
    	t.string :preference
    	t.integer :contact_num
      t.timestamps null: false
    end
  end
end
