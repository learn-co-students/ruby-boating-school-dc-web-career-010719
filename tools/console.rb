require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

artem = Student.new('Artem')
ryan = Student.new('Ryan')
print Student.all
puts ""
jake = Instructor.new("Jake")
melanie = Instructor.new("Melanie")
print Instructor.all
puts ""
puts Student.find_student("Artem").first_name == "Artem"

artem.add_boating_test("First Test", "failed", jake)
artem.add_boating_test("Second Test", "passed", melanie)
puts artem.grade_percentage == 50.0

jake.pass_student(artem, "First Test")
puts artem.grade_percentage == 100.0

puts melanie.fail_student(artem, "First Test").status == "failed"
puts jake.fail_student(artem, "Third Test").status == "failed"

puts artem.add_boating_test("First Test", "passed", melanie).nil?
puts !ryan.add_boating_test("First Test", "passed", melanie).nil?

puts BoatingTest.all

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
