class MedicalCentersController < ApplicationController

  def index
    @exams = params[:exams]
    @habits = params[:habits]
    @bookings = params[:bookings]
    @recipes = params[:recipes]
  end

end
