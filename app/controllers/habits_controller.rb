class HabitsController < ApplicationController
  before_action :find_habit, only: %i[show edit destroy]

  def index
    @habits = current_user.habits
    @tabaco = @habits.find_by(habit_type: "Tabaco")
    @alcohol = @habits.find_by(habit_type: "Alcohol")
    @cafe = @habits.find_by(habit_type: "Café")
    @alimentacion = @habits.find_by(habit_type: "Alimentación")
    @ejercicio = @habits.find_by(habit_type: "Ejercicio")
    @sueno = @habits.find_by(habit_type: "Sueño")

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
    @habit = Habit.find_by(habit_type: params[:habit_type])
    if @habit
      @habit.frecuency = params[:frecuency]
    else
      @habit = Habit.new(habit_params)
      @habit.user = current_user
    end
    @habit.save
    redirect_to habits_path
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
