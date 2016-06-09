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

puts "Please confirm how many students are in the class: "
number_of_students = gets.chomp.to_i

count = 0
limit = number_of_students
missed_days_counter = 0
register = {}


while (count < number_of_students)

  puts "Please enter the student's first name: "
  first_name = gets.chomp

  puts "Please enter the student's last name: "
  last_name = gets.chomp

  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  register["#{full_name}"] = {}

  puts "Is student here? Please type yes or no"
  attendance = gets.chomp.downcase
  register["#{full_name}"]["present"] = ["#{attendance}"]

  if (attendance == "yes")
    puts "Have they submitted their homework?"
    homework_status = gets.chomp
    register["#{full_name}"]["homework"] = ["#{homework_status}"]
  else
    missed_days_counter += 1
    register["#{full_name}"]["missed_days"] = ["#{missed_days_counter}"]
  end

  count += 1

  puts register

end










