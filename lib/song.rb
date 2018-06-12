class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre

      @@count += 1

      @@genres << @genre
      @@artists << @artist



    end


  def self.count
    @@count
  end

  def self.artists
    a = [];
    @@artists.each{|artist| a << artist unless a.include?(artist)};
    a;

  end

  def self.genres
   g = [];
    @@genres.each{|genre| g << genre unless g.include?(genre)};
    g;

  end




end
