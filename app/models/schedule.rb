class Schedule

  def self.find_all
    @@schedules ||= begin
      a = YAML.load(File.read(File.join(Rails.root, 'db', 'schedule_2012.yml')))
      a.map{|e| Schedule.new e}
    end
  end

  attr_accessor :start, :title, :kind, :abstract, :work

  def initialize h
    h.each do |k, v|
      send(:"#{k}=", v)
    end
  end

  def has_link?
    self.abstract || self.work
  end


  alias :id :start

end
