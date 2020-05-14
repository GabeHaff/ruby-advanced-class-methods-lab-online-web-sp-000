class Song
  attr_accessor :name, :artist_name
  @@all = []
#not default

def initialize(name)
  @name = name 
  @@all << self 
end 
#

def self.create
song=song.new 
@@all << Song.new
self.save 
end


  def self.all
    @@all
  end
#save= instance method, not acting on the class for its definition/execution/call
  def save
    self.class.all << self
  end

end
