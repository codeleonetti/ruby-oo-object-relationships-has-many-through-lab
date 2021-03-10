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

    def appointments
        Appointment.all.map do |appt|
            if appt.doctor == self
                appt
            end
        end
    end

    def patients
        Appointment.all.map do |appt|
            if appt.doctor == self
                appt.patient
            end
        end
    end







end


