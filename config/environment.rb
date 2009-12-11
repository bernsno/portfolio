RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  
  config.gem 'thoughtbot-paperclip', :lib => 'paperclip', :source => 'http://gemcutter.org'
  config.gem 'mislav-will_paginate', :lib => 'will_paginate', :source => 'http://gems.github.com'
  config.gem 'ryanb-acts-as-list', :lib => 'acts_as_list', :source => 'http://gems.github.com'
  config.gem 'justinfrench-formtastic', :lib => 'formtastic', :source => 'http://gems.github.com'  
  config.gem "authlogic"
  config.gem "giraffesoft-resource_controller", :lib => "resource_controller", :version => '>= 0.6.5'
  config.gem 'rack', :version => '>= 1.0.0'

  config.time_zone = 'UTC'
end