class Schedule

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

  attr_accessor :start, :title, :kind, :abstract, :organization_tmplate, :organization

  def initialize h
    h.each do |k, v|
      send(:"#{k}=", v)
    end
  end

  def has_link?
    self.abstract
  end

  alias :id :start

end
