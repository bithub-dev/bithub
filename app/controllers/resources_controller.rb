class ResourcesController < ApplicationController
  before_filter :load_resources, only: [:index, :create]
  before_filter :require_login, except: [:index]

  def index
    if logged_in?
      @resource = current_user.resources.build
    end
  end

  def create
    @resource = current_user.resources.build params[:resource]
    if @resource.save
      redirect_to resources_path, :notice => "Thanks for contributing! Your resource has been added below."      
    else
      render :index
    end
  end

  def edit
    @resource = current_user.resources.find(params[:id])
  end

  def update
    @resource = current_user.resources.build(params[:resource])
    if @resource.save
      redirect_to resources_path, :notice => "Your changes have been saved."      
    else
      render :edit
    end
  end

  def load_resources
    @resources = Resource.order('created_at DESC')
  end
end