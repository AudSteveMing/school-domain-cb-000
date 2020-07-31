class School
  attr_accessor :name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  # def roster
  #   @roster
  # end

  def grade(grade)
    roster[grade]
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def sort
    roster[grade].map do |key, value|
      key.sort
  end
end
end

# school.sort
# # => {9 => ["AC Slater", "Zach Morris"], 10 => ["Aardvark", "Kelly Kapowski"], 11 => ["Screech", "Xavier"]}
