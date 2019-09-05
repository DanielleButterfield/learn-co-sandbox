require_relative '../config/environment'

def reload
    load 'config/environment.rb'
end

mac = Doctor.new("Dr. Mac", "GP")
bob = Doctor.new("Dr. Bob", "Dentist")

patient1 = Patient.new("Sally P", 23, "checked leg injury")
patient2 = Patient.new("Johnny", 3, "hurt head")
patient3 = Patient.new("Martin", 23, "grow 5 inches over the summer")
patient4 = Patient.new("Kassandra", 73, "she's doing just fine")

appointment1 = Appointment.new(mac, patient1)
appointment2 = Appointment.new(mac, patient2)
appointment3 = Appointment.new(bob, patient2)
appointment4 = Appointment.new(bob, patient2)


binding.pry