require 'pry'

class Nurse < ActiveRecord::Base
  has_many :icus
  has_many :patients, through: :icus

  has_many :cars

  def self.get_most_common_expertise
   all_expertise = Nurse.all.map { |n| n.expertise }
   freq = all_expertise.reduce(Hash.new(0)) { |h,v| h[v] += 1; h }
   all_expertise.max_by { |v| freq[v] }
  end


  def icus
   Icu.all.select{|icu| icu.nurse == self}
  end

  def patients
    self.icus.map{ |i| i.patient }
  end

  def get_patient_conditions
    self.patients.map { |p| p.condition }
  end

  def get_patients_names
    self.patients.map { |p| p.name }
  end


 end
