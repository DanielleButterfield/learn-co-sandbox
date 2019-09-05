class Doctor
    attr_reader :name, :field
    
    @@all = []

    def initialize(name, field)
        @name = name
        @field = field

        @@all <<self
    end

    def self.all
        @@all
    end

    def self.all_names
        all.map do |doctor|
            doctor.name
        end
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def patients
        appointments.map do |appointment|
            appointment.patient.name
        end.uniq
    end

    def num_patients
        patients.length
    end
end
