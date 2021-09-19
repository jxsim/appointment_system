class BootstrapController < ApplicationController
  def index
    redirect_to doctor_appointments_path(doctor_id: Doctor.first.id)
  end
end