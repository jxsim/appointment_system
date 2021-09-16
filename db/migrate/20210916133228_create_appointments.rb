class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments, id: false, primary_key: :id do |t|
      t.string :id, null: false
      t.datetime :appointment_datetime
      t.string :doctor_id
      t.string :patient_id

      t.timestamps
    end
  end
end
