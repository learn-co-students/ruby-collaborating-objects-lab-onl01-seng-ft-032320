class Song
   @@all =[]
   attr_accessor :name, :artist
  def initialize(name)
      @@all << self
      @name = name
      end

  def self.all
     @@all
     #binding.pry
  end

  def self.new_by_filename(filenames)
    artist_name = filenames.split(" - ")[0]
    song_name = filenames.split(" - ")[1]

    song = Song.new(song_name)
    song.artist_name = artist_name
    song

  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)


  end
end
