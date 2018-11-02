class Instructor

 attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student, test_name)
      stuff = BoatingTest.all.select {|test| test.test_name == test_name}
      stuff.each do |test|
        if test.student == student
          test.test_status = "passed"
        end
      end
  end

  def self.fail_student(student, test_name)
      stuff = BoatingTest.all.select {|test| test.test_name == test_name}
      stuff.each do |test|
        if test.student == student
          test.test_status = "failed"
        end
      end
  end



end
