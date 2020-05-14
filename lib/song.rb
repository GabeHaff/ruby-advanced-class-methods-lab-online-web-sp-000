class Song
  attr_accessor :name, :artist_name
  @@all = []

def initialize
  @name=name 
  @@all << self 
end 


def Song.create
Song.initialize.all 

end

  def self.all
    @@all
  end
#save= instance method, not acting on the class for its definition/execution/call
  def save
    self.class.all << self
  end

end
