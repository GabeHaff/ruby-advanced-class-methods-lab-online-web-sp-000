class Song
  attr_accessor :name, :artist_name
  @@all = []


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
  
def self.new_from_file_name(song_name)
  Song.new_from_file_name=
  

  def self.all
    @@all
  end
#save= instance method, not acting on the class for its definition/execution/call
  def save
    self.class.all << self
  end

end
