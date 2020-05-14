require 'pry'

class Icu < ActiveRecord::Base
  belongs_to :nurse
  belongs_to :patient

  def self.get_icu_with_ventilator_average
   Icu.find_by(ventilator: true)
  end

  def get_patient_condition
   self.patient.condition
  end

  def get_nurse_by_expertise(input)
    Nurse.where(expertise: input)
  end

  def get_patients_by_condition(input)
   Patient.where(condition: input)
  end

 end
