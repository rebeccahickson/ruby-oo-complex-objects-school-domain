class School
  attr_reader :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] = [] if @roster[grade].nil?
    @roster[grade] << student_name
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.each { |_grade_level, student| student.sort! }
  end
end
