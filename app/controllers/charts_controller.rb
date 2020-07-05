class ChartsController < ApplicationController
  def index
    @pie_chart = pie_chart Report.all.group(:user_id).count
    # = pie_chart Report.all.group(:job_id).count
    # = pie_chart Report.all.group(:hour_id).count
    # = pie_chart Report.all.group(:date).count
    
  end
end
