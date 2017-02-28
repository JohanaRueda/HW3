class Movie < ActiveRecord::Base
    def self.all_ratings
        Movie.select(:rating).distinct.inject([]) { |a, x| a.push x.rating }
    end
end
