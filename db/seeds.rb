require 'rest-client'
require 'json'
require 'pry'

Teacher.destroy_all
Student.destroy_all
HouseNameCheckingList.destroy_all

def get_student_from_api
	all_students = RestClient.get('http://hp-api.herokuapp.com/api/characters/students')
	JSON.parse(all_students)
end

def get_teacher_from_api
	all_teachers = RestClient.get('http://hp-api.herokuapp.com/api/characters/staff')
	JSON.parse(all_teachers)
end

def get_name_and_house(hash_array)
	name_and_house = []
	hash_array.each do |hash|
		each_person = []
		each_person << hash.fetch("name")
		each_person << hash.fetch("house")
		name_and_house << each_person
	end
	name_and_house
end

def students_info
	student_hash_array = get_student_from_api
	get_name_and_house(student_hash_array)
end

def teachers_info
	teacher_hash_array = get_teacher_from_api
	get_name_and_house(teacher_hash_array)
end

students_info.each do |each_student|
	Student.create(name: each_student[0], house: each_student[1])
end

teachers_info.each do |each_teacher|
	Teacher.create(name: each_teacher[0], house: each_teacher[1])
end

Student.all.each do |each_student|
	Teacher.all.each do |each_teacher|
		HouseNameCheckingList.create(student_id: each_student.id, teacher_id: each_teacher.id)
	end
end