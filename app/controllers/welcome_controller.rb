class WelcomeController < ApplicationController
  def index
    @timelines = YAML.load File.read(Rails.root + "db/timeline_2014.yml")
  end
end
