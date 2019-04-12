class Show < ActiveRecord::Base

  def self.highest_rating
    #This method should return the highest value in the ratings column. Hint: if there
    #   is a minimum Active Record method, might there be a maximum method?
    Show.maximum(:rating)
  end

  def self.lowest_rating
    # returns the TV show with the lowest rating
    Show.minimum(:rating)
  end

  def self.ratings_sum
    #Returns the sum of all the ratings of all the tv shows
    Show.sum(:rating)
  end

  def self.popular_shows
    #Returns an array of all the shows with a rating above 5
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    #Returns an array of all of the shows, listed in alpabetical order
    Show.order(:name)
  end

  def self.most_popular_show
    #returns the tv show with the highest rating
    Show.find_by("rating == ?", Show.highest_rating)
  end

  def self.least_popular_show
    #Returns the show with the lowest rating
    Show.find_by("rating == ?", Show.lowest_rating)
  end

end
