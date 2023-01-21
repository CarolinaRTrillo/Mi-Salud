class ReportsController < ApplicationController
  
  def index
    @reports = current_user.reports
  end

  def show
    @report = Report.find(params[:id])
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    @report.user = current_user
    if @report.save
      redirect_to reports_path
    else
      render :new
    end
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    @report.update(report_params)
    redirect_to report_path(@report)
  end

  def destroy
    @report.destroy
    redirect_to reports_path, status: :see_other
  end

  private

  def report_params
    params.require(:report).permit(:title, :date, :category)
  end
end
