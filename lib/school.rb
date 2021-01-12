require 'pry'

class School
    attr_reader :school_name
    attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)

        if @roster.has_key?(grade) == false
            @roster[grade] = []
        end

        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.map {|key, value| [key, value.sort]}.to_h
    end

end