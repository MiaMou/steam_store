class StatisticsController < ApplicationController
  def index
    steams = Steam.last(100)
    @name_arr = steams.pluck(:name)
    @achievement_arr = steams.pluck(:achievements)

    @positive_ratings = steams.pluck(:positive_ratings)
    @negative_ratings = steams.pluck(:negative_ratings)
  end
end
