class Author 
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @title = []
  end
  
  def add_title(title)
    title.author = self
  end
  
  def title
    title.all.select {|title| title.author == self}
  end
  
  def add_post_by_title(title)
    song = Title.new(title)
    add_post(title)
  end
  
  def self.post_count
    Title.all.length
  end
end