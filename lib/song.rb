
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
    @@genres << genre
    @@artists << artist

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    genres = Hash.new(0)
    @@genres.each do |k|
        genres[k] += 1
    end
    genres
  end



  def self.artist_count
    artists = {}
    count = 0
    @@artists.each do |k|
      if !artists.key?(k)
        artists[k] = count + 1
      else
        artists[k] += 1
      end
    end
    artists
  end
end
