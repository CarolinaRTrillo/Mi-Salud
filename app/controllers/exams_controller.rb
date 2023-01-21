class ExamsController < ApplicationController
  before_action :exam_id, only: %i[show edit update destroy]
  def index
    @exams = current_user.exams.order(:created_at)
  end

  def show
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exam_params)
    @exam.user = current_user
    if @exam.save
      redirect_to exams_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @exam.update(exam_params)
    redirect_to exam_path(@exam)
  end

  def destroy
    @exam.destroy
    redirect_to exams_path, status: :see_other
  end

  private

  def exam_params
    params.require(:exam).permit(:name, :date, :place)
  end

  def exam_id
    @exam = Exam.find(params[:id])
  end
end
