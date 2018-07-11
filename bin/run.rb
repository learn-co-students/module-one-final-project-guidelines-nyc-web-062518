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
	houses = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
	puts "Tell me something about yourself."
	puts "Input 1 if you have brave at heart."
	puts "Input 2 if you are just and loyal."
	puts "Input 3 if you are wise and learning."
	puts "Input 4 if you want to use any means to achieve your ends."
	user_choice = gets.chomp
	case user_choice
	when "1"
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
	when "2"
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
	when "3"
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
	when "4"
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
	student_name = welcome_to_hogwarts
	house_result = sorting_hat
	student_instance = Student.create(name: student_name, house: house_result)
	student_id = student_instance.id
	Teacher.all.each do |each_teacher|
		HouseNameCheckingList.create(student_id: student_id, teacher_id: each_teacher.id)
	end
	housemates(house_result)
	teachers(house_result)
	binding.pry
end

runner