class Students < ActiveRecord::Migration[5.0]
  def change
  	create_table :students do |t|
  		t.string :name
  		t.string :house
  	end
  end
end
