require_relative '../config/environment'
require 'pry'

ActiveRecord::Base.logger.level = 1 

def welcome_to_hogwarts
	harry_potter = "
            _            _.,----,
 __  _.-._ / '-.        -  ,._  \\) 
|  `-)_   '-.   \\       / < _ )/' }
/__    '-.   \\   '-, ___(c-(6)-(6)
 , `'.    `._ '.  _,'   >\\'   '' )
 :;;,,'-._   '---' (  ( '/`. -='/
;:;;:;;,  '..__    ,`-.`)'- '--'
;';:;;;;;'-._ /'._|   Y/   _/' |
      ''''._ F    |  _/ _.'._   `|
             L    \\   \\/     '._  |
      .-,-,_ |     `.  `'---,  \\_ _|
      //    'L    /  \\,   ('--',=`)7
     | `._       : _,  \\  /'`-._L,_'-._
     '--' '-.\\__/ _L   .`'         './/
                 [ (  /
                  ) `{
                  \\__)
	"
	harry_potter_word = "
        ___                             | '  |
   ___  \\ /  ___         ,'\\_           | .-. |        /|
   \\ /  | |,'__ \\  ,'\\_  |   \\          | | | |      ,' |_   /|
 _ | |  | |\\/  \\ \\ |   \\ | |\\_|    _    | |_| |   _ '-. .-',' |_   _
// | |  | |____| | | |\\_|| |__    //    |     | ,'_`. | | '-. .-',' `. ,'|_
\\\\_| |_,' .-, _  | | |   | |\\ \\  //    .| |\\_/ | / \\ || |   | | / |\\  \\|   |
 `-. .-'| |/ / | | | |   | | \\ \\//     |  |    | | | || |   | | | |_\\ || |\\_|
   | |  | || \\_| | | |   /_\\  \\ /      | |`    | | | || |   | | | .---'| |
   | |  | |\\___,_\\ /_\\ _      //       | |     | \\_/ || |   | | | |  /\\| |
   /_\\  | |           //_____//       .||`      `._,' | |   | | \\ `-' /| |
        /_\\           `------'        \\ |              `.\\  | |  `._,' /_|
                                       \\|                    `.\\
	"


	puts harry_potter + harry_potter_word 
	puts "Welcome to Hogwarts!"
	puts "May I ask what is your name?"
	user_name = gets.chomp
	puts " "
	puts "Hello, #{user_name}!"
	puts "Did you notice anything special when you were growing up?"
	puts "You are a wizard/witch!"
	user_name
end

def sorting_hat
	houses = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
	sorting_hat = '
            .
           /:\\
          /::.\\
         //::. \\     
        ///::.. \\
  __--"////::    \\"--__
--__   "--_____--"   __--
    """--_______--"""
	'
	puts sorting_hat
	# puts "Tell me something about yourself."
	# puts "Input 1 if you have brave at heart."
	# puts "Input 2 if you are just and loyal."
	# puts "Input 3 if you are wise and learning."
	# puts "Input 4 if you want to use any means to achieve your ends."
	# user_choice = gets.chomp
	prompt = TTY::Prompt.new
	user_choice = prompt.select("Tell me something about yourself", [
		"you have brave at heart",
		"you are just and loyal",
		"you are wise and learning",
		"you want to use any means to achieve your ends"
	])
	# binding.pry
	case user_choice
	when "you have brave at heart"
		lion = "
                      ,.
                    ,_> `.   ,';
                ,-`'      `'   '`'._
             ,,-) ---._   |   .---''`-),.
           ,'      `.  \\  ;  /   _,'     `,
        ,--' ____       \\   '  ,'    ___  `-,
       _>   /--. `-.              .-'.--\\   \\__
      '-,  (    `.  `.,`~ \\~'-. ,' ,'    )    _\\
      _>    \\     \\ ,'  ') )   `. /     /    <,.
   ,-'   _,  \\    ,'    ( /      `.    /        `-,
   `-.,-'     `.,'       `         `.,'  `\\    ,-'
    ,'       _  /   ,,,      ,,,     \\     `-. `-._
   /-,     ,'  ;   ' _ \    / _ `     ; `.     `(`-\\
    /-,        ;    (o)      (o)      ;          `'`,
  ,~-'  ,-'    \\     '        `      /     \\      <_
  /-. ,'        \\                   /       \\     ,-'
    '`,     ,'   `-/             \\-' `.      `-. <
     /_    /      /   (_     _)   \\    \\          `,
       `-._;  ,' |  .::.`-.-' :..  |       `-.    _\\
         _/       \\  `:: ,^. :.:' / `.        \\,-'
       '`.   ,-'  /`-..-'-.-`-..-'\            `-.
         >_ /     ;  (\\/( ' )\\/)  ;     `-.    _<
         ,-'      `.  \\`-^^^-'/  ,'        \\ _<
          `-,  ,'   `. `''''' ,'   `-.   <`'
            ')        `._.,,_.'        \\ ,-'
             '._        '`'`'   \\       <
                >   ,'       ,   `-.   <`'
                 `,/          \\      ,-`
                  `,   ,' |   /     /
                   '; /   ;        (
                    _)|   `       (
                    `')         .-'
                      <_   \\   /    
                        \\   /\\(
                         `;/  `
		"
		puts lion
		puts "#{houses[0]}!"
		houses[0]
	when "you are just and loyal"
		badger = "
								___,,___
           _,-='=- =-  -`'--.__,,.._
        ,-;// /  - -       -   -= - ''=.
      ,'///    -     -   -   =  - ==-=\\`.
     |/// /  =    `. - =   == - =.=_,,._ `=/|
    ///    -   -    \\  - - = ,ndDMHHMM/\\b  \\\\
  ,' - / /        / /\\ =  - /MM(,,._`YQMML  `|
 <_,=^Kkm / / / / ///H|wnWWdMKKK#''''-;. `''0\\  |
        `''''QkmmmmmnWMMM\\''''WHMKKMM\\   `--. \\> \\
 mmm          `'''''  `->>>    ``WHMb,.    `-_<@)
                                `''QMM`.
                                   `>>>
		"
		puts badger
		puts "#{houses[1]}!"
		houses[1]
	when "you are wise and learning"
		eagle = "
                               /T /I
                              / |/ | .-~/
                          T\\ Y  I  |/  /  _
         /T               | \\I  |  I  Y.-~/
        I l   /I       T\\ |  |  l  |  T  /
 __  | \\l   \\l  \\I l __l  l   \\   `  _. |
 \\ ~-l  `\\   `\\  \\  \\\\ ~\\  \\   `. .-~   |
  \\   ~-. '-.  `  \\  ^._ ^. '-.  /  \\   |
.--~-._  ~-  `  _  ~-_.-'-.' ._ /._ .'' ./
 >--.  ~-.   ._  ~>-''    '\\   7   7   ]
^.___~'--._    ~-{  .-~ .  `\\ Y . /    |
 <__ ~'-.  ~       /_/   \\   \\I  Y   : |
   ^-.__           ~(_/   \\   >._:   | l______
       ^--.,___.-~'  /_/   !  `-.~'--l_ /     ~'-.
              (_/ .  ~(   /'     '~'--,Y   -=b-. _)
               (_/ .  \\  :           / l      c'~o \\
                \\ /    `.    .     .^   \\_.-~'~--.  )
                 (_/ .   `  /     /       !       )/
                  / / _.   '.   .':      /        '
                  ~(_/ .   /    _  `  .-<_
                    /_/ . ' .-~'' `.  / \\  \\          ,z=.
                    ~( /   '  :   | K   '-.~-.______//
                      '-,.    l   I/ \\_    __{--->._(==.
                       //(     \\  <    ~'~''     //
                      /' /\\     \\  \\     ,v=.  ((
                    .^. / /\\     '  }__ //===-  `
                   / / ' '  '-.,__ {---(==-
                 .^ '       :  T  ~'   ll  
                / .  .  . : | :!        \\\\
               (_/  /   | | j-'          ~^
                 ~-<_(_.^-~'     

		"
		puts eagle
		puts "#{houses[2]}!"
		houses[2]
	when "you want to use any means to achieve your ends"
		snake = "
                     /^\\/^\\
                  _|__|  O|
         \\/     /~     \\_/ \\
          \\____|__________/  \\
                 \\_______      \\
                         `\\     \\                 \\
                           |     |                  \\
                          /      /                    \\
                         /     /                       \\
                       /      /                         \\ \\
                      /     /                            \  \\
                    /     /             _----_            \\   \\
                   /     /           _-~      ~-_         |   |
                  (      (        _-~    _--_    ~-_     _/   |
                   \\      ~-____-~    _-~    ~-_    ~-_-~    /
                     ~-_           _-~          ~-_       _-~   
                        ~--______-~                ~-___-~
		"
		puts snake
		puts "#{houses[3]}!"
		houses[3]
	else
		puts "Go back home, you don't belong here!"
	end
end

def create_student(student_name, house_result)
	Student.create(name: student_name, house: house_result)
end

def create_house_name_checking_list(student)
	student_id = student.id
	Teacher.all.each do |each_teacher|
		HouseNameCheckingList.create(student_id: student_id, teacher_id: each_teacher.id)
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

# def teachers(house_choice)
# 	puts "Do you want to know who your teachers are?(y/n)"
# 	user_input = gets.chomp
# 	if user_input == "y" || user_input == "Y"
# 		teacher_records = Teacher.where(house: house_choice)
# 		teacher_records.map do |teacher|
# 			puts teacher.name
# 		end
# 	else
# 		puts "Go to your dorm and rest well. Big day tomorrow!"
# 	end
# end

def teachers(student)
	puts "Do you want to know who your teachers are?(y/n)"
	user_input = gets.chomp
	if user_input == "y" || user_input == "Y"
		teacher_records = student.teachers
		teacher_records.map do |teacher|
			puts teacher.name
		end
	else
		puts "Go to your dorm and rest well. Big day tomorrow!"
	end
end

def good_night
	puts ""
	puts "Enjoy your feast and Good night!"
end

def runner
	student_name = welcome_to_hogwarts
	house_result = sorting_hat
	student_instance = create_student(student_name, house_result)
	create_house_name_checking_list(student_instance)
	housemates(house_result)
	teachers(student_instance)
	good_night
	# binding.pry
end

runner