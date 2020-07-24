class ReportsController < ApplicationController
  require 'date'
  before_action :set_report, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @report = Report.new
    @reports = Report.all.includes(:user).order("due_on DESC")
    @pie_due_on = 
    @user_data = Report.all.group("due_on").count
  end

  def new
  end

  def create
    @report = Report.create(report_params)
    if @report.save
      redirect_to root_path, notice: 'レポートを作成しました'
    else
      # alert: 'レポート入力箇所が足りません'
      render :index
    end
  end

  def destroy
    report = Report.find(params[:id])
    report.destroy
  end

  def edit
  end

  def update
    if @report.update(report_params)
      redirect_to report_path(@report.id), notice: 'レポートを更新しました'
    else
      render :edit
    end
  end

  def show
    # @reports = Report.where(user_id: current_user.id).includes(:user).order("due_on DESC")
    # @hours = @reports.map(&:hour)
    # @due_ons = @reports.map{|report| report.due_on} 
  end

  def destroy
    report = Report.find(params[:id])
    report.destroy
  end

  def search
    @reports = Report.search(params[:keyword])
    # respond_to do |format|
    #   format.html
    # end
  end

  private
  def report_params
    params.require(:report).permit(:due_on, :job, :hour, :impression).merge(user_id: current_user.id)
  end
  
  def set_report
    # @report = Report.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
