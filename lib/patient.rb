require 'pry'

class Patient < ActiveRecord::Base
  has_many :icus
  has_many :nurses, through: :icus

  def self.average_age
   Patient.all.map { |p| p.age }.sum / Patient.all.count
  end

  def nurses
    self.icus.map{ |i| i.nurse }
  end

  def icus
   Icu.all.select{|icu| icu.patient == self}
 end

 def find_icu_with_ventilator
  Icu.all.select{ |icu| icu.ventilatior == true}
 end

 def get_icu(name, ventilatior, nurse)
   Icu.new(name, ventilatior, nurse, self)
 end

 def get_nurses_by_expertise(expertise)
   Icu.all.select { |i| i.nurse.expertise == expertise }
 end

 def primary_docs
  Appointment.all.select do |v|
    v.primarydoc == self
  end
 end

 def names 
  primary_docs.map do |v|
    v.name
  end
end

def expertise
  primary_docs.map do |v|
    v.expertise
  end
end

def new_appointment
  appointment4 = Appointment.new(self,"Dr.P", "Dec 15th, 2020")
end

 end
