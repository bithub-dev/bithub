class TagsController < ApplicationController
  def show
    @tag = Tag.where(:name => params[:tag]).first
    if @tag.nil?
      raise not_found_404
    end

    @resources = Resource.tagged_with(@tag.name)
  end
end