# -*- coding: utf-8 -*-
module ApplicationHelper

  def entry_deadline
    Time.local 2012, 11, 7
  end
  def entry_only_morning_deadline
    Time.local 2012, 11, 9
  end
  def party_deadline
    Time.local 2012, 11, 7
  end
  def lightning_talks_deadline
    Time.local 2012, 11, 5
  end

  def count_down_time time
    diff = time - Time.now
    case diff
    when lambda {|d| d >= 60 * 60 * 24 }
      "#{(diff / (60 * 60 * 24)).to_i}日前"
    when lambda {|d| d >= 60 * 60 }
      "#{(diff / (60 * 60)).to_i}時間前"
    when lambda {|d| d >= 60 }
      "#{(diff / 60).to_i}分前"
    else
      "締切ました。"
    end
  end

end
