require_relative '../config/environment'
require 'pry'

patient1 = Patient.new("Robert" , 55, "stable")
patient2 = Patient.new("Olivia" , 25, "critical")

nurse1 = Nurse.new("Pam" , "NICU")
nurse2 = Nurse.new("Niki" , "Emergency Room")
nurse3 = Nurse.new("Lauren" , "Emergency Room")

icu1 = Icu.new("Adult", ventilatior=false, nurse1, patient1)
icu2 = Icu.new("Pediatric", ventilatior=true, nurse1, patient2)
icu3 = Icu.new("Pediatric", ventilatior=true, nurse1, patient2)

car1 = Car.new("Brand", "Model", nurse1)

binding.pry

l
