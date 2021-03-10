require "pry"

class Patient

    @@all = []

    attr_accessor :name
    attr_reader

    def initialize(name)
        @name = name
        @@all << self


    end

    def self.all
        @@all
    end

    def new_appointment(date, doc)
       # binding.pry
     # Appointment = date.Doctor
     appointment = date && doc


        # need a date and doc with patient
    end

    def appointments

    end

    def doctors

    end


end