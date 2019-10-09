class Author 
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @title = []
  end
  
  def add_posts(posts)
    posts.author = self
  end
  
  def posts
    posts.all.select {|posts| posts.author == self}
  end
  
  def add_post_by_title(title)
    posts = Post.new(title)
    add_post(title)
  end
  
  def self.post_count
    Title.all.length
  end
end