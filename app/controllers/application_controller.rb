class ApplicationController < ActionController::Base
  protect_from_forgery

  def not_found_404
    ActionController::RoutingError.new('Not Found')
  end
end
