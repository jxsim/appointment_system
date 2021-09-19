class AppointmentsController < ApplicationController
  def index
    @appointments = doctor.appointments
  end

  def new
    @appointment = Appointment.new
  end

  def create
    Appointment.create(params.permit(:appointment_datetime, :patient_id, :doctor_id))

    redirect_to action: :index
  end

  def destroy
    Appointment.find(params[:id]).destroy

    redirect_to action: :index
  end

  private

  def doctor
    Doctor.find(params[:doctor_id])
  end
end