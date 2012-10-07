class FileBaseModel

  @@collection_dict = {}
  
  def self.filename
  end

  def self.find_all
    @@collection_dict[self.filename] ||= begin
      a = YAML.load(File.read(File.join(Rails.root, 'db', filename)))
      a.map{|e| self.new e}
    end
  end

  def self.all
    find_all
  end

  def self.find id
    self.find_all.each do |e|
      return e if e.id == id
    end
    nil
  end

  def initialize h
    h.each do |k, v|
      send(:"#{k}=", v)
    end
  end

end
