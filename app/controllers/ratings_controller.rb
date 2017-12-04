class RatingsController < ApplicationController

  before_action :set_rateable, only: [:new, :create, :show]

  def new
    @rating = @rateable.ratings.build
  end

  def create
    @rating      = @rateable.ratings.build rating_params
    @rating.user = current_user

    if @rating.save
      case @rateable.class.to_s
      when 'Teacher'
        redirect_to teacher_path(@rateable)
      when 'Subject'
        redirect_to subject_path(@rateable)
      end
    else
      render 'new'
    end
  end

  def show
    @rating = @rateable.ratings.find_by_id params[:id]
  end

  private

  def set_rateable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return @rateable = $1.classify.constantize.find_by_id(value)
      end
    end
    @rateable = nil
  end

  def rating_params
    params.require(:rating).permit(:difficulty, :to_do, :not_to_do, :text, :take_again, :grade)
  end

end
