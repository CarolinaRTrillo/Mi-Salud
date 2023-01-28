class MedicalCenter < ApplicationRecord
  if current_user
    @exams = current_user.exams.take(3)
    @habits = current_user.habits
    @recipes = current_user.recipes.take(3)
    @bookings = current_user.bookings
  end
end
