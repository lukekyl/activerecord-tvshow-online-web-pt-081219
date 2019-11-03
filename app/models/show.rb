class Show < ActiveRecord::Base
  def Show::highest_rating
    Show.maximum(:rating)
  end
  def Show::most_popular_show
    Show.find_by(Show::highest_rating.to_s)
  end
  def Show::lowest_rating
    Show.minimum(:rating)
  end
  def Show::least_popular_show
    Show.order(rating: :asc).first
  end
  def Show::ratings_sum
    Show.sum(:rating)
  end
end
