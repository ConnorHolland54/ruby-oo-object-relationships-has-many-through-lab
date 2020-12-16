
class Genre
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |song| song.genre == self}
    end

    def artists
        arr = Song.all.select { |song| song.genre == self}
        arr.collect { |song| song.artist}
    end


end
