class HomeController < ApplicationController

  def index
    @teachers = Teacher.last_rated.limit 4
    @subjects = Subject.last_rated.limit 4
  end

end