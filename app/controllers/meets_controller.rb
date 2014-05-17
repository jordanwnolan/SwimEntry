class MeetsController < ApplicationController

  def show
    # fail
    @meet = Meet.find(params[:id])
  end

  def update
    @meet = Meet.find(params[:id])
    fail
    render :show
  end
end
