require "heroku_rake_deploy/version"
require "heroku_rake_deploy/railtie" if defined?(Rails)
require "heroku_db_restore" if defined?(Rails)
require "heroku_db_restore/railtie" if defined?(Rails)

module HerokuRakeDeploy

end
