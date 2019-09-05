class Patient
    attr_reader :name, :age, :notes

    @@all = []

    def initialize(name, age, notes)
        @name = name
        @age = age
        @notes = notes

        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor.name
        end.uniq
    end
end