class Doctor

    @@all = []

    attr_accessor :name
    #attr_reader

    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def new_appointment(date, name)
        Appointment.new(date,name, self)
    end







end


