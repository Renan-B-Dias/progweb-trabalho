class HomeController < ApplicationController

  def index
    @teachers = Teacher.last_rated(4)
    @subjects = Subject.last_rated(4)
  end

end