class SubjectsController < ApplicationController

  def index
    @subjects = Subject.includes(:ratings)
  end

  def show
    @subject = Subject.includes(:ratings).find_by_id params[:id]
  end

  def search
    @subjects = Subject.includes(:ratings).search params[:search]
  end
end
