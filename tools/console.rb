require_relative '../config/environment'
require 'pry'

patient1 = Patient.create("Robert" , 55, "stable")
patient2 = Patient.create("Olivia" , 25, "critical")

nurse1 = Nurse.create("Pam" , "NICU")
nurse2 = Nurse.create("Niki" , "Emergency Room")
nurse3 = Nurse.create("Lauren" , "Emergency Room")

icu1 = Icu.create("Adult", ventilatior=false, nurse1, patient1)
icu2 = Icu.create("Pediatric", ventilatior=true, nurse1, patient2)
icu3 = Icu.create("Pediatric", ventilatior=true, nurse1, patient2)

car1 = Car.create("Brand", "Model", nurse1)

binding.pry

l
