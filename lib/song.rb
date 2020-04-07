require "pry"
class Song
  attr_accessor :name, :artist
  
  @@all=[]
  def initialize(name)
    @name = name
     @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def self.new_by_filename(filename)
     
    
   
   singer = filename.split(" - ")[0]
   song_name = filename.split(" - ")[1]
   song = self.new
   song.artist = artist_name
   song.name = song_name
  
   song
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  


end