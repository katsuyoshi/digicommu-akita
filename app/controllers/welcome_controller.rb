require 'open-uri'

class WelcomeController < ApplicationController
  def index
    @articles = Article.all
    @articles = @articles[0, 5] if @articles.size >= 5
    @chairperson = Staff.chairperson
    @staffs = Staff.staffs
    @contributors = Staff.contributors

    @registration_status = begin
      a = JSON.parse(open('http://api.doorkeeper.jp/groups/digicommu-akita/events.json').read)
      a.each.map{|e| {title:e['event']['title'], participants:e['event']['participants'], ticket_limit:e['event']['ticket_limit']}}.sort_by{|e| e[:title].length}
    rescue Exception => e
    end
  end

  def access
  end
end
