class HerokuDeploy::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/deploy.rake'
    load 'tasks/db_restore.rake'
  end
end
