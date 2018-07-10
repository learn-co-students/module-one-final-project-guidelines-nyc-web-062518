class Teacher < ActiveRecord::Base

	has_many :house_name_checking_lists
	has_many :students, through: :house_name_checking_list

end