class Song
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if @author == nil
      return nil
    else
      author.name
    end
  end
end