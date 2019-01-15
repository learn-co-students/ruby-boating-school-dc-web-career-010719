require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 202", "passed", krabs)


hai = Student.new("Hai")
hai.add_boating_test('exam1', 'passed', puff)
hai.add_boating_test('exam2', 'failed', krabs)
hai.add_boating_test('exam3', 'failed', puff)
hai.grade_percentage
krabs.pass_student("Hai", 'exam2')
puff.fail_student("Hai", "exam1")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
