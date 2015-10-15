class Y2015::WelcomeController < ApplicationController
  layout "y2015"
  
  before_filter :fetch_sessions

  def index
  end
  
  def show
    @session = @sessions.find{|s| s["id"] == params["id"]}
  end
  
  
  private
  
    def fetch_sessions
      path = File.join(Rails.root, "db", "2015", "sessions.yml")
      index = 0
      @sessions = YAML.load(File.read(path)).sort_by{|e| index -= 1; [e["time"] || 0, index]}.reverse
    end
    
    
end
