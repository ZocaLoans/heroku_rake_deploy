class HerokuDeploy::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/deploy.rake'
  end
end
