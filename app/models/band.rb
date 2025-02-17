class Band < ActiveRecord::Base
    has_many :concerts
    has_many :venues, through: :concerts

    def play_in_venue(venue, date)
        self.concerts.create(venue: venue, date: date)
    end

    def all_introductions
        self.concerts.map {|c| c.introduction}
    end

    def self.most_performances
        all.max {|b1,b2| b1.concerts.length <=> b2.concerts.length}
    end

end