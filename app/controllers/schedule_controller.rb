class ScheduleController < ApplicationController
  def index
    @schdules = Schedule.find_all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def organization
    if params[:id] == 'anog'
      @schedule = Schedule.anog
    else
      @schedule = Schedule.find(params[:id])
    end
  end

  def abstract
    @schedule = Schedule.find(params[:id])
  end
  
end
