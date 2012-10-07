class Article < FileBaseModel

  def self.filename
    'articles_2012.yml'
  end

  attr_accessor :title, :created_at, :body

  def id
    self.created_at
  end
  
end
