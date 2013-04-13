ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase

  # Monkey patching IntegrationTest so we can use Capybara. There must be a better way?
  class ActionDispatch::IntegrationTest
    include Capybara::DSL
    Capybara.app = Bithub::Application
  end

end
