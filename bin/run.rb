require_relative '../config/environment'
require 'pry'

def welcome_to_hogwarts
	
	puts "Welcome to Hogwarts!"
	puts "May I ask what is your name?"
	user_name = gets.chomp
	puts " "
	puts "Hello, #{user_name}!"
	puts "Did you notice anything special when you were growing up?"
	puts "You are a wizard/witch!"
end

def sorting_hat
	houses = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
	puts "Tell me something about yourself."
	puts "Input 1 if you have brave at heart."
	puts "Input 2 if you are just and loyal."
	puts "Input 3 if you are wise and learning."
	puts "Input 4 if you want to use any means to achieve your ends."
	user_choice = gets.chomp
	case user_choice
	when "1"
		puts "#{houses[0]}!"
		houses[0]
	when "2"
		puts "#{houses[1]}!"
		houses[1]
	when "3"
		puts "#{houses[2]}!"
		houses[2]
	when "4"
		puts "#{houses[3]}!"
		houses[3]
	else
		puts "Go back home, you don't belong here!"
	end
end

def housemates(house_choice)
	puts "Do you want to know who your housemates are?(y/n)"
	user_input = gets.chomp
	if user_input == "y" || user_input == "Y"
		student_records = Student.where(house: house_choice)
		student_records.map do |student|
			puts student.name
		end
	else
		puts "Go to your dorm and rest well. Big day tomorrow!"
	end
end

def teachers(house_choice)
	puts "Do you want to know who your teachers are?(y/n)"
	user_input = gets.chomp
	if user_input == "y" || user_input == "Y"
		teacher_records = Teacher.where(house: house_choice)
		teacher_records.map do |teacher|
			puts teacher.name
		end
	else
		puts "Go to your dorm and rest well. Big day tomorrow!"
	end
end

def runner
	welcome_to_hogwarts
	result = sorting_hat
	housemates(result)
	teachers(result)
	# binding.pry
end

runner