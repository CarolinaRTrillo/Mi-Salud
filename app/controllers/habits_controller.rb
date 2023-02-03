class HabitsController < ApplicationController
  before_action :find_habit, only: %i[show edit destroy]

  def index
    @habits = current_user.habits
    # @percentage_completed = percentage_completed
  end

  def new
    @habit = Habit.new
  end

  def show
  end

  def tabaco
    @habit = Habit.new
  end

  def alcohol
    @habit = Habit.new
  end

  def cafe
    @habit = Habit.new
  end

  def alimentacion
    @habit = Habit.new
  end

  def ejercicio
    @habit = Habit.new
  end

  def sueno
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)
    @habit.user = current_user
    if @habit.save
      redirect_to habits_path
    else
      render :new
    end
  end

  def update
    @habit = Habit.find(params[:id])
    @habit.update(habit_params)
    redirect_to habit_path(@habit)
  end

  def destroy
    @habit.destroy
    redirect_to habits_path, status: :see_other
  end

  private

  def find_habit
    @habit = Habit.find(params[:id])
  end

  def habit_params
    params.require(:habit).permit(:frequency, :habit_type)
  end

#   def percentage_completed
#     completed_habits = Habit.where(habit_type: true)
#     percentage_completed = (completed_habits.count / @habits.count) * 100
#   end

#   g = Gchart.line(:data => [1,2,3,4], :title => "My Line Chart")
# puts g.url
end
