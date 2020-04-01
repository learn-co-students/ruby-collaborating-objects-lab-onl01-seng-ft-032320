class MP3Importer
    attr_accessor :path, :files
    
    def initialize(filepath)
        @path = filepath
        @files = files
    end 

    def files 
        @files = Dir.entries(path)
        @files.select{|file| file.include?("mp3")}
    end 

    def import  
        @files.each {|file| Song.new_by_filename(file)}
    end 
end 