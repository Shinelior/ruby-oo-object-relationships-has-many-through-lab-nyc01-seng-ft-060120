class Patient 
    @@all=[]
    attr_accessor :name
    def initialize(name)
        @name=name
        @@all<<self 
    end 
    #date,patient,doctor
# def new_appointment(doctor,date)
#    Appointment.new(date,self,docter)
# end
def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
    def self.all 
        @@all 
    end 
def appointments
    Appointment.all.select{|ap|  ap.patient == self}
end 
def doctors
    Appointment.all.map{|ap|  ap.doctor}

end
end