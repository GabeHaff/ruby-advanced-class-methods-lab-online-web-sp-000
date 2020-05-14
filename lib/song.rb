class Song
  attr_accessor :name, :artist_name
  @@all = []
  
   def self.all
    @@all
  end
#save= instance method, not acting on the class for its definition/execution/call
  def save
    self.class.all << self
  end

def self.create
  song = Song.new
   song.save 
  song
 end

def self.new_by_name(song_name)
  song = Song.new 
  song.name = song_name
  song
end 

def self.create_by_name(song_name) #class constructor
song = self.create
song.name = song_name 
song 
end 

def self.find_by_name(song_name) #class finder
  self.all.find{|song| song.name == song_name}
end 

def self.find_or_create_by_name(song_name) #class method
  self.find_by_name(song_name) || self.create_by_name(song_name)
end 

def self.alphabetical #also a class method
  @@all.sort_by {|song| song.name}
end 
  
def Song.new_from_filename(file_name) ##class constructor 
  new_song = self.create
  new_song.name = file_name.split(" - ")[1].chomp(".mp3")
  new_song.artist_name = file_name.split(" - ")[0]
  new_song
end

def self.create_from_filename(file_name)
  new_song = Song.new_from_filename(file_name)
  Song.save
  new_song 
end 
end 
  
 

 