# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Sh2::Application.configure do
  config.app_name = 'serverhouse2'
  config.app_name_short = 'sh2'
end
