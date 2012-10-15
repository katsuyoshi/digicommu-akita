require 'open-uri'

class Staff

  @@chairperson = nil
  @@staffs = nil
  @@contributors = nil
  
  def self.filename
    'staffs_2012.yml'
  end

  def self.chairperson
    @@chairperson ||= begin
      e = YAML.load(File.read(File.join(Rails.root, 'db', filename)))['chairperson']
      self.new e
    end
    @@chairperson
  end

  def self.staffs
    @@staffs ||= begin
      a = YAML.load(File.read(File.join(Rails.root, 'db', filename)))['staffs']
      a.map{|e| self.new e}
    end
    @@staffs
  end

  def self.contributors
    @@contributors ||= begin
      a = YAML.load(File.read(File.join(Rails.root, 'db', filename)))['contributors']
      a.map{|e| self.new e}
    end
    @@contributors
  end

  attr_accessor :sns_type, :handle, :message

  def initialize h
    h.each do |k, v|
      send(:"#{k}=", v)
    end
  end

  def name
    @name ||= begin
      if sns_type == 'twitter'
        get_from_twitter
      else
        handle
      end
    end
  end

  def image_url
    @image_url ||= begin
      if sns_type == 'twitter'
        get_from_twitter
      end
    end
  end


private
  def get_from_twitter
    h = JSON.parse(open("https://api.twitter.com/1/users/show.json?screen_name=#{handle}").read)
    @name = h['name']
    @image_url = h['profile_image_url']        
  end

end
