module Y2012
class ScheduleController < ApplicationController
  layout "y2012/application"
  def index
    @schdules = Schedule.find_all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def organization
    case params[:id]
    when 'anog'
      @schedule = Schedule.anog
    when 'fandroid_akita'
      @schedule = Schedule.fandroid_akita
    else
      @schedule = Schedule.find(params[:id])
    end
  end

  def abstract
    @schedule = Schedule.find(params[:id])
  end
  
end
end
