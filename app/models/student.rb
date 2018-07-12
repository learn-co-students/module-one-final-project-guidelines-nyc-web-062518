class Student < ActiveRecord::Base

	has_many :house_name_checking_lists
	has_many :teachers, through: :house_name_checking_lists

end