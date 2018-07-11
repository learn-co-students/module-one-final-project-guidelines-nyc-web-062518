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

def get_student_name_and_house(student_hash_array)
	student_name_and_house = []
	student_hash_array.each do |student_hash|
		each_student = []
		each_student << student_hash.fetch("name")
		each_student << student_hash.fetch("house")
		student_name_and_house << each_student
	end
	student_name_and_house
end

def get_teacher_from_api
	all_teachers = RestClient.get('http://hp-api.herokuapp.com/api/characters/staff')
	JSON.parse(all_teachers)
end

def get_teacher_name_and_house(teacher_hash_array)
	teacher_name_and_house = []
	teacher_hash_array.each do |teacher_hash|
		each_teacher = []
		each_teacher << teacher_hash.fetch("name")
		each_teacher << teacher_hash.fetch("house")
		teacher_name_and_house << each_teacher
	end
	teacher_name_and_house
end

def students_info
	student_hash_array = get_student_from_api
	get_student_name_and_house(student_hash_array)
end

def teachers_info
	teacher_hash_array = get_teacher_from_api
	get_teacher_name_and_house(teacher_hash_array)
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