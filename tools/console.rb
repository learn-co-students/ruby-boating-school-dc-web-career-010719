require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)


test1_pass = patrick.add_boating_test("Power Steering 202", "passed", krabs)
test2_pass = patrick.add_boating_test("Power Steering 203", "passed", krabs)
test3_fail = patrick.add_boating_test("Power Steering 204", "failed", krabs)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
