RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  
  config.gem 'thoughtbot-shoulda', :lib => 'shoulda/rails', :source => 'http://gemcutter.org'
  config.gem 'thoughtbot-factory_girl', :lib => 'factory_girl', :source => 'http://gemcutter.org'
  config.gem 'thoughtbot-paperclip', :lib => 'paperclip', :source => 'http://gemcutter.org'
  config.gem 'mislav-will_paginate', :lib => 'will_paginate', :source => 'http://gems.github.com'
  config.gem 'ryanb-acts-as-list', :lib => 'acts_as_list', :source => 'http://gems.github.com'
  config.gem 'justinfrench-formtastic', :lib => 'formtastic', :source => 'http://gems.github.com'  
  config.gem 'rack'

  config.time_zone = 'UTC'
end