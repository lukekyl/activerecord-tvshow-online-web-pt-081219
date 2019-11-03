class Show < ActiveRecord::Base
  def Show::highest_rating
    Shows.maximum(:rating)
  end



end
