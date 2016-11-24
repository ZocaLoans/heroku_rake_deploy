# HerokuRakeDeploy

Provides deploy and db restore tasks for your app

Use the following environmental variables to control the heroku app name to be deployed/restored from:

```
HEROKU_APPNAME_PRODUCTION
HEROKU_APPNAME_STAGING
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'heroku_rake_deploy', group: :development # No need to include this on production or staging
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install heroku_rake_deploy

## Usage
To see an updated list of tasks and descriptions:
`bundle exec rake heroku_rake_deploy -T heroku_rake_deploy`

~~~bash
rake db:restore                  # Pull Down a copy of the database from the specified heroku environment
rake db:restore:from_local_dump  # Restore from local dump file (defaults to '/tmp/latest.dump' - specify with DUMP_FILE Environmental Variable)
rake db:restore:local            # Erase local development and test database and restore from the local dump file
rake db:restore:production       # Restore a local copy of Heroku's Production Environment database
rake db:restore:staging          # Restore a local copy of Heroku's Staging Environment database
rake deploy                      # Deploy Safely to Heroku
rake deploy:production           # Deploy to Heroku's Production Environment
rake deploy:production:quick     # Quick Deploy to Production, without running migrations
rake deploy:staging:quick        # Quick Deploy to Staging, without running migrations
~~~


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ldstudios/heroku_rake_deploy.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

