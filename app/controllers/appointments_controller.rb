class AppointmentsController < ApplicationController
  def index
    if params[:appointment_date]
      appointment_date = Date.parse(params[:appointment_date])
      @appointments = doctor.appointments.where(appointment_datetime: appointment_date.beginning_of_day..appointment_date.end_of_day)
    else
      @appointments = doctor.appointments
    end
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