class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.find_by_name(title)
    self.all.find{|song| song.name == title}
  end
  
  def self.find_or_create_by_name(title)
    if self.find_by_name(title) == nil
      song = self.create
      song.name = name
      song
    else
      song
    end
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
