class MedicalCentersController < ApplicationController
  def index
    #variables for  card home
    @exams = current_user.exams.take(3)
    @habits = current_user.habits.take(4)
    @bookings = current_user.bookings.take(3)
    @recipes = current_user.recipes.take(3)
    # variables totales
    @total_exams = current_user.exams
    @total_habits = current_user.habits
    @total_recipes = current_user.recipes
  end
end
