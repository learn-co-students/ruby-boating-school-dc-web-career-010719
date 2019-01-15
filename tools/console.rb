require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

phil = Student.new("Phil")
bob = Student.new("Bob")
huh = Student.new("Huh")

paul = Instructor.new("Paul")
jake = Instructor.new("Jake")

puts phil.first_name == "Phil"
puts bob.first_name == "Bob"
puts paul.name == "Paul"

puts Student.all
puts Instructor.all

puts Student.find_student('Phil') == phil
puts Student.find_student("Bob") == bob
puts Student.find_student('Huh') == huh

Student.find_student('a')

phil.add_boating_test("boat_test1", "pending", paul)
phil.add_boating_test("test2", "pending", paul)
phil.add_boating_test("test3", "pending", jake)
bob.add_boating_test("filler_test", "pending", paul)

puts BoatingTest.all

puts BoatingTest.all[0].test_name

active_test = BoatingTest.all[0]

#pass student
puts active_test.test_status
paul.pass_student("Phil", "boat_test1")
puts active_test.test_status

paul.pass_student("Phil", "test_hasnt_happened")
puts BoatingTest.all[-1].test_name

#fail student
active_test = BoatingTest.all[1]
puts active_test.test_status
paul.fail_student("Phil", "test2")
puts active_test.test_status

paul.fail_student("Phil", "f_test")
puts BoatingTest.all[-1].test_name

#grade percentage

jake.pass_student("Phil", "test3")
jake.pass_student("Phil", "test4")
puts phil.grade_percentage



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
