class Teachers < ActiveRecord::Migration[5.0]
  def change
  	create_table :teachers do |t|
  		t.string :name
  		t.string :house
  	end
  end
end
