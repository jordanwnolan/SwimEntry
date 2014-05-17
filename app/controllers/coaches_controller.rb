class CoachesController < ApplicationController

  def index
    @coach = current_coach
    @meets = Meet.all
  end

end
