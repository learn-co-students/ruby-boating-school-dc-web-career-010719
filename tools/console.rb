require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
james= Student.new("James")
haley= Student.new("Haley")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
scott= Instructor.new("Scott")


no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
james_boo = james.add_boating_test("James 101", "failed", scott)
haley_yay = haley.add_boating_test("Haley 202", "passed", scott)
james_yay = james.add_boating_test("James 102", "passed", scott)


test1_pass = patrick.add_boating_test("Power Steering 202", "passed", krabs)
test2_pass = patrick.add_boating_test("Power Steering 203", "passed", krabs)
test3_fail = patrick.add_boating_test("Power Steering 204", "failed", krabs)

puts haley.first_name == "Haley"
puts Student.all == [spongebob, patrick, james, haley]


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
