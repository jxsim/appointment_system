class Appointment < ApplicationRecord
  self.primary_key = 'id'
  
  belongs_to :doctor
  belongs_to :patient

  validate :appointment_time_within_working_hrs

  before_save do
    if id.nil?
      last_id = Appointment.last&.id&.sub('A', '').to_i || '0'.to_i
      self.id = "A#{last_id + 1}"
    end
  end

  def appointment_time_within_working_hrs
    hour = appointment_datetime.hour
    if hour < 8 || hour > 15 || (hour == 15 && appointment_datetime.sec > 0)
      errors.add(:appointment_datetime, 'Appointment time is outside consultation period')
    end
  end
end
