class Speaker < FileBaseModel
  
  def self.filename
    'lightning_talks_2012.yml'
  end

  attr_accessor :name, :title, :abstract

end
