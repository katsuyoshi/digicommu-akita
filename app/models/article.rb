class Article < FileBaseModel

  def self.filename
    'articles_2012.yml'
  end

  attr_accessor :title, :created_at, :body, :body_template

  def id
    self.created_at
  end

  def self.find_by_title title
    all.each do |a|
      return a if a.title == title
    end
    nil
  end
  
end
