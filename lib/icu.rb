require 'pry'

class Icu < ActiveRecord::Base
  belongs_to :nurse
  belongs_to :patient

  def self.get_icu_with_ventilator_average
   Icu.all.select { |i| i.ventilatior == true }.count /  Icu.all.count.to_f
  end

  def get_patient_condition
   self.patient.condition
  end

  def get_nurse_by_expertise(expertise)
    Nurse.all.select { |n| n.expertise == expertise}
  end

  def get_patients_by_condition(condition)
   Patient.all.select { |p| p.condition == condition}
  end

 end
