require 'pry'

class Patient
  @@all = []
  attr_accessor :name, :age, :condition

  def initialize(name, age, condition)
   @name = name
   @condition = condition
   @age = age
   Patient.all << self
  end

  def self.all
   @@all
  end

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

 end
