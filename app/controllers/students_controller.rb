class StudentsController < ApplicationController


  def index
    @students = User.all
    @time = 'TESTING'
  end

end