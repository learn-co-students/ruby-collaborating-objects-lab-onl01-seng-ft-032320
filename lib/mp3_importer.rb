class MP3Importer
attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    #Gets all files of @path without directories ".","..""
    Dir.children(path)
  end

  def import
    #Uses .files to iterate through each file and create song based on file_name
    files.each {|file| Song.new_by_filename(file)}
  end

end
