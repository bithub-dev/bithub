class HomeController < ApplicationController
  def home
    @resources = Resource.recent
  end
end