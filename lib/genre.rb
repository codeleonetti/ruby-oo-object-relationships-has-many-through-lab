

class Genre

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}

    end

    # def artists
    #     Song.all.select do |song| 
    #        if song.genre == self
    #         Song.artist
    #        end
    #     end
    # end
    def artists
        self.songs.map(&:artist)
    end

end
