
nurse1 = Nurse.create(name: "Pam", expertise: "Practitioner")
nurse2 = Nurse.create(name: "Lauren", expertise: "Neo-natal")
nurse3 = Nurse.create(name: "Nicki", expertise: "Neo-natal")

patient1 = Patient.create(name: "Patient1", age: 45, condition: "stable")
patient2 = Patient.create(name: "Patient2", age: 25, condition: "stable")
patient3 = Patient.create(name: "Patient3", age: 35, condition: "critical")

car1 = Car.create(make: "Make1", model: "Model1", nurse_id: nurse1.id)
car2 = Car.create(make: "Make2", model: "Model2", nurse_id: nurse1.id)
car3 = Car.create(make: "Make3", model: "Model3", nurse_id: nurse2.id)

icu1 = Icu.create(name:"Adult ICU", ventilator: true, nurse_id: nurse1.id, patient_id: patient1.id)
icu2 = Icu.create(name: "Adult ICU 2", ventilator: true, nurse_id: nurse2.id, patient_id: patient2.id)
icu3 = Icu.create(name: "Adult ICU 3", ventilator: false, nurse_id: nurse3.id, patient_id: patient3.id)
