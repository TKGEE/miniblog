class ReportsController < ApplicationController
  def index
    @reports = Report.order("created_at DESC").page(params[:page]).per(5)
  end
  
  def show
    @report = Report.find(params[:id])
  end
end
