require "pry"
class MP3Importer
 attr_accessor :path
   def initialize(path)
       @path = path
   end

   def files
       #binding.pry
     Dir.entries(path).select{|files| files.length > 4}#.last}

   end

  def import

    files.each{|files| Song.new_by_filename(files)}

  end

end
