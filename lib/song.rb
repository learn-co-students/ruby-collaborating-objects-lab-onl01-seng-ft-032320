class Song
  
  #### Attributes ####
  attr_accessor :name, :artist
  @@all = []
  
  
  #### Instance methods ####
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist_name=(name)
    if self.artist == nil
      self.artist = Artist.find_or_create_by_name(name)
    else
      self.artist = Artist.all.select {|artist| artist.name == name}
    end
  end
  
  #### Class methods ####
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist_name = filename.split(" - ")[0]
    song
  end
end