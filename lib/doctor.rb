class Doctor
  
  attr_accessor :name, :appointments, :patients
  
  @@all=[]

  def self.all
    @@all
  end

  

  def initialize(name)
    @name = name
    @@all << self
  end
  
def appointments
  Appointment.all.select do |appoint| appoint.doctor == self
  end
end


  def new_appointment(date, patient)
     appointment = Appointment.new(patient, date, self)
     @appointments << appointment
     appointment
  end

  
    def patients 
      self.appointments.collect do |appointment| 
      appointment.patient
     end
  end
end

