require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


puts "Instantiation tests"
spongebob = Student.new("Spongebob")
puts spongebob.name
sandy = Student.new("Sandy")
puts sandy.name
patrick = Student.new("Patrick")
puts patrick.name
squidward = Student.new("Squidward")
puts squidward.name
puts "\n"

puts "All students"
puts Student.all.inspect
puts "\n"

puff = Instructor.new("Mrs. Puff")
puts Instructor.new("Mrs. Puff").name
plankton = Instructor.new("Plankton")
puts Instructor.new("Plankton").name
puts "\n"

puts "All instructors"
puts Instructor.all.inspect
puts "\n"

puts "Add boating test tests"
patrick.add_boating_test("Easiest Test", "failed", puff)
spongebob.add_boating_test("Easy Test", "passed", puff)
spongebob.add_boating_test("Reasonable Test", "failed", puff)
sandy.add_boating_test("Hard Test", "passed", plankton)
squidward.add_boating_test("Hard Test", "passed", plankton)
sandy.add_boating_test("Impossible Test", "passed", plankton)
puts BoatingTest.all.inspect
puts "\n"

puts "Find student tests"
puts Student.find_student("Spongebob") == spongebob
puts Student.find_student("Patrick") == patrick
puts Student.find_student("Sandy") == sandy
puts Student.find_student("Plankton") == "There's no student by that name."

puts "Grade percentage tests"
puts patrick.grade_percentage == 0.0
puts spongebob.grade_percentage == 0.5
puts squidward.grade_percentage == 1.0
puts sandy.grade_percentage == 1.0

puts "Pass student tests"
a = puff.pass_student("Spongebob", "Easy Test")
puts "\n"
print a.test, a.status, a.student.name
b = puff.pass_student("Spongebob", "Reasonable Test")
puts "\n"
print b.test, b.status, b.student.name
c = puff.pass_student("Patrick", "Special Test")
puts "\n"
print c.test, c.status, c.student.name
d = plankton.pass_student("Sandy", "Technical Interview")
puts "\n"
print d.test, d.status, d.student.name
e = plankton.pass_student("Robot", "Technical Interview")
puts "\n"
puts e

puts "Fail student tests"
a = puff.fail_student("Spongebob", "Easy Test")
puts "\n"
print a.test, a.status, a.student.name
b = puff.fail_student("Spongebob", "Reasonable Test")
puts "\n"
print b.test, b.status, b.student.name
c = puff.fail_student("Patrick", "Special Test")
puts "\n"
print c.test, c.status, c.student.name
d = plankton.fail_student("Sandy", "Technical Interview")
puts "\n"
print d.test, d.status, d.student.name
e = plankton.fail_student("Robot", "Technical Interview")
puts "\n"
puts e

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
