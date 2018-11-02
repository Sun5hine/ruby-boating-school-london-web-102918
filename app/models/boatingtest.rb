class BoatingTest

  attr_accessor :student, :instructor, :test_status, :test_name

  @@all = []

  def initialize(student, instructor, test_status, test_name)
    @student = student
    @instructor = instructor
    @test_status = test_status
    @test_name = test_name
    @@all << self
  end

  def self.all
    @@all
  end

end
