# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
CouchPotato::Config.database_name = 'pizza_development'
