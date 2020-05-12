class Appointment
    attr_accessor :patient, :primarydoc, :date
    @@all = []
    def initialize(patient, primarydoc, date)
        @patient = patient
        @primarydoc = primarydoc
        @date = date
        @@all << self
    end
    def self.all
        @@all
    end
end