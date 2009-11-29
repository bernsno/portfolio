ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'
require 'factory_girl'
require 'flexmock/test_unit'
require "webrat"
require "authlogic/test_case"

Webrat.configure do |config|
  config.mode = :rails
end

class ActiveSupport::TestCase

  self.use_transactional_fixtures = true

  self.use_instantiated_fixtures  = false

  fixtures :all
  
  def login_as(user)
    visit login_path
    fill_in "email", :with => user.email
    fill_in "password", :with => user.password
    click_button "login"
  end

end

class ActionController::TestCase
  
  def fake_login
    @current_user = Factory(:user)
    activate_authlogic
    UserSession.create(@current_user)
  end
    
end