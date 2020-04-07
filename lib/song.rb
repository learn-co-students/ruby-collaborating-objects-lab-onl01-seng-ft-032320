class Song
  attr_accessor :name, :artist
  
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
      file_array = file_name.split(/[\-\.]/)
      file_array.collect do |name|
        name.rstrip!
        name.rstrip
        name.lstrip
        name.lstrip!
      end
      file_array
      song = self.new(file_array[1])
      song.artist_name=(file_array[0])
      song
  end
  
  def artist_name=(name)
    artist_instance = Artist.find_or_create_by_name(name)
    artist_instance.add_song(self)
  end

end