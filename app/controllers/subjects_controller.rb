class SubjectsController < ApplicationController

  def index
    @subjects = Subject.includes(:ratings).order_by(:name)
  end

  def show
    @subject = Subject.includes(:ratings).find_by_id params[:id]
  end

  def search
    @subjects = Subject.includes(:ratings).search(params[:search]).order_by(:name)
  end
end
