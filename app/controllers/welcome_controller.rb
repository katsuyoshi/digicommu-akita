class WelcomeController < ApplicationController
  def index
    @timelines = YAML.load File.read(Rails.root + "db/timeline_2014.yml")
  end
  
  def show
    @slot = params[:slot]
    @room_name = params[:room_name]
    index = params[:index].to_i
    timelines = YAML.load File.read(Rails.root + "db/timeline_2014.yml")
    @presentation = timelines.find{|t| t["slot"] == @slot}[@room_name]["presentations"][index]
  end
  
end
