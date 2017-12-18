class TeachersController < ApplicationController

  def index
    @teachers = Teacher.includes(:ratings).order(name: :asc)
  end

  def show
    @teacher = Teacher.includes(:ratings).find_by_id params[:id]
  end

  def search
    @teachers = Teacher.includes(:ratings).search(params[:search]).order(name: :asc)
  end

end
