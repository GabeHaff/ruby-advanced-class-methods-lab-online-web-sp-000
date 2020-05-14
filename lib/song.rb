class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
#save= instance method, default
  def save
    self.class.all << self
  end

end
