class Concert < ActiveRecord::Base
    belongs_to :band
    belongs_to :venue

    def hometown_show
       if self.band.hometown == self.venue.city
        @ishometown = true
       else
        @ishometown = false
       end
       @ishometown
    end

    def introduction
        "Hello #{self.venue.city}!!!!! We are #{self.band.name} and we're from #{self.band.hometown}"
    end


end