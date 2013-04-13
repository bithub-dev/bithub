class ResourcesController < ApplicationController
  def index
    if logged_in?
      @resource = current_user.resources.build
    end

    @resources = Resource.all
  end
end