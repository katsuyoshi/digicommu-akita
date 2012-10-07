class Schedule < FileBaseModel

  def self.filename
    'schedule_2012.yml'
  end

  attr_accessor :start, :title, :kind, :abstract, :organization_tmplate, :organization

  def has_link?
    self.abstract
  end

  alias :id :start

end
