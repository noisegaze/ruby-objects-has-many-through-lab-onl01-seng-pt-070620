require 'pry' 

class Patient 
  
  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_appointment(date,doctor)
    Appointment.new(date,self,doctor)
  end
  
  def appointments 
    Appointment.all.select {|apps| apps.patient == self}
  end
  
  def doctors 
    appointments.map do |apps|
      apps.doctor
    end 
  end
  
  
  
  
  
  
  
  
end