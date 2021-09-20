class HomeController < ApplicationController
  def index
  end

  def login
    redirect_to doctor_appointments_path(doctor_id: params[:doctor_id])
  end
end