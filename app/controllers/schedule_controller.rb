class ScheduleController < ApplicationController
  def index
    @schdules = Schedule.find_all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def organization
    @schedule = Schedule.find(params[:id])
  end
  
end
