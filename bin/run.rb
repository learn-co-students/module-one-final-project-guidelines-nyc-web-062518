require_relative '../config/environment'

def runner
	student_hash_array = get_student_from_api
	get_student_name_and_house(student_hash_array)
	teacher_hash_array = get_teacher_from_api
	get_teacher_name_and_house(teacher_hash_array)
	binding.pry
end

puts "HELLO WORLD"
