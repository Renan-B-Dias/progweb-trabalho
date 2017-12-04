class TeachersController < ApplicationController

  def index
    @teachers = Teacher.includes(:ratings)
  end

  def show
    @teacher = Teacher.includes(:ratings).find_by_id params[:id]
  end

end
