class Artist 
  attr_accessor :name 
  
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
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all.select{|song|
      song.artist == self
    }
  end 
  
  def self.find_or_create_by_name(name)
    # iterate over each Artist in self.all
    #  if the Artist.name exists
    #    return the Artist
    #  else 
    #    create a new Artist & assign the name to Artist.name
    #    return the newly created Artist
    
    self.all.each{|artist|
      if (artist.name ==  name)
        return artist
      end 
    }
    artist = Artist.new(name)
    artist 
  end 
  
  def print_songs 
    self.songs.each{|song|
      puts song.name 
    }
  end 
  
end 