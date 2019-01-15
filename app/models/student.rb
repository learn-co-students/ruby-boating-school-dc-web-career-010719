class Student

attr_accessor :first_name

@@all = []


def initialize(first_name)
  @first_name = first_name
  @@all << self
end

def self.all
  @@all
end

def add_boating_test(test_name, test_status, instructor)
  BoatingTest.new(self, test_name, test_status, instructor)
end

def self.find_student(first_name)
  self.all.find {|student| student.first_name == first_name}
end

def grade_percentage
my_tests= BoatingTest.all.select{|test|
  test.student.first_name == self.first_name}
passed = my_tests.select {|test| test.test_status == "passed"}

percentage =(passed.size.to_f/my_tests.size.to_f)*100
end

end
