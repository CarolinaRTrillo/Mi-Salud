class MedicalCentersController < ApplicationController
  def index
    @exams = current_user.exams.take(3)
    @habits = current_user.habits.take(3)
    @bookings = current_user.bookings.take(3)
    @recipes = current_user.recipes.take(3)
  end
end
