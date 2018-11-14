class Song 
  
  attr_accessor :name, :artist, :genre 

  @@artists = []
  @@genres = []
  
  @@count = 0
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist 
    @genre = genre 
    @@genres << @genre 
    @@count += 1 
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq 
  end
  
  def self.artists
    @@artists.uniq 
  end
  
  def self.genre_count
    @@genres.group_by{ |v| v }.map{ |k, v| {k => v.size} }
  end
end