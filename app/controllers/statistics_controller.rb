class StatisticsController < ApplicationController
  before_action :check_user_admin, only: [:index]
  def index
    steams = Steam.last(100)
    @name_arr = steams.pluck(:name)
    @achievement_arr = steams.pluck(:achievements)

    @positive_ratings = steams.pluck(:positive_ratings)
    @negative_ratings = steams.pluck(:negative_ratings)
  end

  private
    def check_user_admin
      unless current_user&.is_admin?
        redirect_to root_path, notice: "You do not have permission to access this interface!"
      end
    end
end
