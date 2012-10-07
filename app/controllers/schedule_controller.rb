class ScheduleController < ApplicationController
  def index
    @schdules = Schedule.find_all
  end

  def show
  end
end
