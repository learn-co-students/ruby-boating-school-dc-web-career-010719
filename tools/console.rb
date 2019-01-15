require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
puff = Instructor.new("Nana")
spongebob.add_boating_test("Gone Boating", "pass", puff)
spongebob.add_boating_test("Gone Fishing", "fail", puff)
spongebob.add_boating_test("More Boating", "fail", puff)
puff.pass_student(spongebob, "Gone Fishing")

# binding.pry

puts spongebob.first_name == "Spongebob"
puts patrick.first_name == "Patrick"
puts Student.all.length == 2
puts spongebob
puts BoatingTest.all
puts Student.find_student("Spongebob") == spongebob
puts spongebob.grade_percent


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

