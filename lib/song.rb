
class Song
  @@artists = []
  @@genres = []
  @@count = 0

  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)

    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
<<<<<<< HEAD
    @@genres #we are not using uniq! here, see down for explanation
=======
    @@genres.uniq!
>>>>>>> d55ac4da3a2107cd5c28f819d96d1df1423cc7c2
    @@artists << artist
    @@artists#we are not using uniq! here, see down for explanation

  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq! #we are using uniq! here bc we want to have unique results only after we call this class method
  end
  def self.genres
    @@genres.uniq! #we are using uniq! here bc we want to have unique results only after we call this class method
  end

  def self.genre_count
      genre_count_hash = {}
      @@genres.each do |genre|
        if genre_count_hash[genre]
          genre_count_hash[genre] += 1
        else
          genre_count_hash[genre] = 1
        end
      end
      genre_count_hash
  end

  def self.artist_count
    artist_count_hash = {}
    @@artists.each do |artist|
      if artist_count_hash[artist]
        artist_count_hash[artist] += 1
      else
        artist_count_hash[artist] = 1
      end
    end
    artist_count_hash
end
end
