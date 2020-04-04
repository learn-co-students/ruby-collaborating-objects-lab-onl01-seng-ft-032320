class Artist
attr_accessor :name #Macro for setter/getter of Artist.name
@@all = [] #Keeps track of all Artist instances

  def initialize(name) #Creates new instance
    @name = name #Sets instance variable name to name
    @songs = [] #Creates new instance variable array for new Artist
    @@all << self #Adds artist to class variable @@all
  end

  def self.all
    @@all #Allows us to check all artist instances
  end

  def add_song(song) #Add song to artist
    song.artist = self #Assign artist instance to a song
    @songs << song #Add song to instance varaible song to keep track of all artist songs
  end

#Returns array of all artist songs by collaborating w/ Song class
  def songs
    Song.all.select {|songs| songs.artist == self}
  end

  def self.find_or_create_by_name(name)
    #Checks if @@all is not empty to then check for possible duplicate
    if !self.all.empty?
      #Checks for potential duplicate and returns the instance if found via .first
      self.all.select{|artist| artist.name == name}.first
    else
      self.new(name) #Creates new artist if they do not exist
    end
  end

  def print_songs
    self.songs.each{|song| puts song.name} #Prints songs from @songs
  end

end
