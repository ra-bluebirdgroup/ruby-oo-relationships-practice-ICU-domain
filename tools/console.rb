require_relative '../config/environment'
require 'pry'

patient1 = Patient.new("Robert" , 55, "stable")
patient2 = Patient.new("Olivia" , 25, "critical")
patient3 = Patient.new("Tom", 30, "Stable")

nurse1 = Nurse.new("Pam" , "NICU")
nurse2 = Nurse.new("Niki" , "Emergency Room")
nurse3 = Nurse.new("Lauren" , "Emergency Room")

icu1 = Icu.new("Adult", ventilatior=false, nurse1, patient1)
icu2 = Icu.new("Pediatric", ventilatior=true, nurse1, patient2)
icu3 = Icu.new("Pediatric", ventilatior=true, nurse1, patient2)

doc1 = Primarydoc.new("Dr.P",23)
doc2 = Primarydoc.new("Dr.J",43)

appointment1 = Appointment.new(doc2,patient1,"Nov 14th, 2020")
appointment2 = Appointment.new(doc1,patient2,"Nov 13th, 2020")
appointment3 = Appointment.new(doc1,patient3,"Nov 17th, 2020")

car1 = Car.new("Brand", "Model", nurse1)

binding.pry

