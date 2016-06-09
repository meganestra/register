# build nested hash array loop
# no blocks

# gets user input

# class register
# all present?
# homework complete?

# tests

# count = 0
# while (count < lines.length)
#   puts lines[count]
#   count += 1
# end


#ask for a student name
#user inputs student name
#student name is stored
#ask user for next student name

puts "Please confirm the class size: "
number_of_students = gets.chomp.to_i

count = 0
limit = number_of_students
missed_days_counter = 0
missed_homework = 0
register = {}


while (count < number_of_students)

  puts "Please enter the student's FIRST name: "
  first_name = gets.chomp

  puts "Please enter the student's LAST name: "
  last_name = gets.chomp

  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  register["#{full_name}"] = {}

  puts "Is the student present? ('yes' or 'no'): "
  attendance = gets.chomp.downcase
  register["#{full_name}"]["present"] = ["#{attendance}"]

  if (attendance == "yes")
    puts "Have they submitted their homework? ('yes' or 'no'): "
    homework_status = gets.chomp.downcase
    register["#{full_name}"]["homework"] = ["#{homework_status}"]

    if (homework_status == "yes")
      puts "Does their homework reference chickens? ('yes' or 'no'): "
      chickens_present = gets.chomp
      if (chickens_present == "yes")
        register["#{full_name}"]["chicken_love"] = ["#{chickens_present}"]
      else
        register["#{full_name}"]["loser_status"] = ["Is loser"]
      end
    else
      missed_homework += 1
      register["#{full_name}"]["missed_homework"] = ["#{missed_homework}"]
    end
  else
    missed_days_counter += 1
    register["#{full_name}"]["missed_days"] = ["#{missed_days_counter}"]
  end

  count += 1

  for item in register
    puts item
  end

end










