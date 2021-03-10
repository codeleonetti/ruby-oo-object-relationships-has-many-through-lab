
class Artist

    attr_accessor :name

    @@all =[]

    def initialize(name)

        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|name| name.artist == self}
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)

    end

    def genres
        Song.all.select {|genre| genre.artist == self}

    end

    def genres
        self.songs.map(&:genre)
    end
end
