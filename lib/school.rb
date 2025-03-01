# code here!
require 'pry'

class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map {|grade, students| [grade, students.sort]}.to_h
  end

end

school = School.new("Bayside High School")
