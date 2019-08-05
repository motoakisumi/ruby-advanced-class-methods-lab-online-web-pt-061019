class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create(song)
    @song = song
    @@all << self.new
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
