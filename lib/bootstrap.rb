require 'csv'

class Bootstrap
  def self.run
    CSV.parse(File.read('public/test.csv'), headers: true, col_sep: ', ').each do |row|

      doctor = Doctor.find_or_initialize_by(id: row['doctor_id'])
      doctor.update!(name: row['doctor_name'])

      patient = Patient.find_or_initialize_by(id: row['patient_id'])
      patient.update!(name: row['patient_name'],
                      age: row['patient_age'],
                      gender: row['patient_gender'])
      
      appointment = Appointment.find_or_initialize_by(id: row['appointment_id'])
      appointment.update!(appointment_datetime:  Time.strptime(row['appointment_datetime'],"%d%m%Y %k:%M:%S"),
                          doctor: doctor,
                          patient: patient)
    end
  end
end