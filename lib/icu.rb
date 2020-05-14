require 'pry'

class Icu < ActiveRecord::Base
  belongs_to :nurse
  belongs_to :patient

  def self.get_icu_with_ventilator_percent
   Icu.where(ventilator: true).count / Icu.all.count.to_f * 100
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
