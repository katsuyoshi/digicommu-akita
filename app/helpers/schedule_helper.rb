module ScheduleHelper

  def time_range_of_schedule schedule
    s = schedule.start + " - "
    s << schedule.end if schedule.end
    s
  end

end
