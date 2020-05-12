class Primarydoc
    attr_accessor :name, :years_experience
    @@all = []
    def initialize (name,years_experience)    
        @name = name
        @years_experience = years_experience 
        @@all << self
    end

    def self.all
        @@all
    end

    #the patients related to a specific doctor 
    def patients
        Appointment.all.select do |v|
            v.patient == self
    end
end

    #using the helper method above to get the names of the patients related to this doctor
    def names 
        patients.map do |v|
            v.name
        end
    end

end