class Song 
    attr_accessor :name, :artist

    @@all = []
    def initialize(name)
        @name = name 
        @@all << self
    end 

    def artist_name=(artist_name)

        if Artist.all.select{|artist| artist.name == artist_name}.length == 1
            self.artist = Artist.all.find{|artist| artist.name == artist_name}
        else    
            self.artist = Artist.new(artist_name)
        end  
    end 

    def self.new_by_filename(file_name)
        file_array = file_name.split(" - ")
        song = self.new(file_array[1])
        song.artist_name = file_array[0]
        song 
    end 

    def self.all 
        @@all 
    end 
end