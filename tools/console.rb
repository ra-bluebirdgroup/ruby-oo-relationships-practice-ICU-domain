require_relative '../config/environment'
require 'pry'

<<<<<<< HEAD
patient1 = Patient.create("Robert" , 55, "stable")
patient2 = Patient.create("Olivia" , 25, "critical")
=======
patient1 = Patient.new("Robert" , 55, "stable")
patient2 = Patient.new("Olivia" , 25, "critical")
patient3 = Patient.new("Tom", 30, "Stable")
>>>>>>> 8214ccd8048cc79e2749d243d2fcc7e227aea0bc

nurse1 = Nurse.create("Pam" , "NICU")
nurse2 = Nurse.create("Niki" , "Emergency Room")
nurse3 = Nurse.create("Lauren" , "Emergency Room")

icu1 = Icu.create("Adult", ventilatior=false, nurse1, patient1)
icu2 = Icu.create("Pediatric", ventilatior=true, nurse1, patient2)
icu3 = Icu.create("Pediatric", ventilatior=true, nurse1, patient2)

<<<<<<< HEAD
car1 = Car.create("Brand", "Model", nurse1)
=======
doc1 = Primarydoc.new("Dr.P",23)
doc2 = Primarydoc.new("Dr.J",43)

appointment1 = Appointment.new(doc2,patient1,"Nov 14th, 2020")
appointment2 = Appointment.new(doc1,patient2,"Nov 13th, 2020")
appointment3 = Appointment.new(doc1,patient3,"Nov 17th, 2020")

car1 = Car.new("Brand", "Model", nurse1)
>>>>>>> 8214ccd8048cc79e2749d243d2fcc7e227aea0bc

binding.pry

