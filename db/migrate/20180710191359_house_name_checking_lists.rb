class HouseNameCheckingLists < ActiveRecord::Migration[5.0]
  def change
  	create_table :house_name_checking_lists do |t|
  		t.integer :student_id
  		t.integer :teacher_id
  	end
  end
end
