class StudentsController < ApplicationController


  def index
    @students = User.all
  end

end