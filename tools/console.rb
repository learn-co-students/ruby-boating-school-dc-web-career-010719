require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


puts "\n\ntesting create new student\n\n"
matt = Student.new("matthew")
puts matt.class == Student
puts "\nend of testing new student\n\n\n\n\n\n\n"


matt = Student.new("matthew")
fred = Student.new("fred")
alex = Instructor.new("alex")




puts Student.find_student("matthew")
puts Student.find_student("alex")

newtest = BoatingTest.new(matt, "matts test", "passed", alex)
newtest1 = BoatingTest.new(matt, "matts test2", "passed", alex)
newtest2 = BoatingTest.new(matt, "matts test3", "passed", alex)
newtest3 = BoatingTest.new(matt, "matts test4", "failed", alex)
newtest4 = BoatingTest.new(matt, "matts test5", "failed", alex)
newtest5 = BoatingTest.new(matt, "matts test6", "failed", alex)
newtest6 = BoatingTest.new(matt, "matts test7", "failed", alex)
newtest7 = BoatingTest.new(matt, "matts test8", "failed", alex)
newtest8 = BoatingTest.new(matt, "matts test9", "failed", alex)


puts "TEST HERE"
puts newtest3.status

puts alex.pass_student("matthew", "matts test4").status


puts "TEST HERE"

puts "le"
puts Student.find_student("crax")
puts alex.pass_student("crax", "new crax test")
puts Student.find_student("crax")
puts "le"

puts "kjahdkhf"
puts matt.grade_percentage
puts "kjahdkjas"

puts matt.name
puts fred.name
puts Student.all

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
