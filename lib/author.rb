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
  
  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
  end
  
  def self.song_count
    Song.all.length
  end
end