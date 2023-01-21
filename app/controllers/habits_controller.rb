class HabitsController < ApplicationController
  before_action :find_habit, only: %i[show edit destroy]

  def index
    @habits = current_user.habits
  end

  def new
    @habit = Habit.new
  end

  def show
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
    params.require(:habit).permit(:habit_type, :quantity, :frequency)
  end
end
