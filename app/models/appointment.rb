class Appointment < ApplicationRecord
  self.primary_key = 'id'
  
  belongs_to :doctor
  belongs_to :patient

  before_save do
    if id.nil?
      last_id = Appointment.last&.id&.sub('A', '').to_i || '0'.to_i
      self.id = "A#{last_id + 1}"
    end
  end

end
