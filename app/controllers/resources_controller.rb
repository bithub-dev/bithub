class ResourcesController < ApplicationController
  def index
    @resource = Resource.build(:user => current_user)
    @resources = Resource.all
  end
end