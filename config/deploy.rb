set :application, "romero.vc"
set :repository,  "git@github.com:jrom/romero.vc.git"
set :deploy_to, "/home/jordi/apps/romero.vc"
set :deploy_via, :remote_cache
set :branch, "master"

set :user, "jordi"

set :use_sudo, false
ssh_options[:forward_agent] = true

set :scm, :git

role :web, "romero.vc"
role :app, "romero.vc"
role :db,  "romero.vc", :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
end

