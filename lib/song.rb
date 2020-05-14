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

  def self.all
    @@all
  end
#save= instance method, not acting on the class for its definition/execution/call
  def save
    self.class.all << self
  end

end
