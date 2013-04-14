class HomeController < ApplicationController
  def home
    @resources = Resource.recent
    @tips = Tip.recent
  end
end