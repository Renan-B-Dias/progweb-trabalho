class RatingsController < ApplicationController

  def new
  end

  def create
  end

  def show
    @teacher = Teacher.find_by params[:teacher_id]
    @rating = @teacher.ratings.find_by_id params[:id]
  end


end
