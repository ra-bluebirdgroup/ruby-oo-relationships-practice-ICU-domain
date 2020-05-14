require 'pry'

class Patient < ActiveRecord::Base
  has_many :icus
  has_many :appointments
  has_many :nurses, through: :icus
  has_many :doctors, through: :appointments

  def self.average_age
   Patient.all.map { |p| p.age }.sum / Patient.all.count
  end


 def find_icu_with_ventilator
  Icu.all.select{ |icu| icu.ventilator == true}
 end

 def get_icu(name, ventilator, nurse)
   Icu.create(name: name, ventilator: ventilator, nurse_id: nurse.id, patient_id: self.id)
 end

 def get_nurses_by_expertise(expertise)
   self.icus[0].get_nurse_by_expertise(expertise)
 end

 end
