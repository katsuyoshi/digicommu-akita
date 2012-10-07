class Schedule < FileBaseModel

  def self.filename
    'schedule_2012.yml'
  end
=begin
  def self.find_all
    @@schedules ||= begin
      a = YAML.load(File.read(File.join(Rails.root, 'db', 'schedule_2012.yml')))
      a.map{|e| Schedule.new e}
    end
  end

  def self.find id
    self.find_all.each do |e|
      return e if e.id == id
    end
    nil
  end
=end

  attr_accessor :start, :title, :kind, :abstract, :organization_tmplate, :organization

  def has_link?
    self.abstract
  end

  alias :id :start

end
