class Doctor
    @@all=[]
    attr_reader :name
    def initialize(name)
        @name=name
        @@all<<self 
    end 

def appointments
Appointment.all.select{|ap|  ap.doctor == self}
end 
def new_appointment(patient,date)
    Appointment.new(date, patient, self)
  end
  def patients
    appointments.map{|pa| pa.patient}
  end
    def self.all 
        @@all 
    end 




end