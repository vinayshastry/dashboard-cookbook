include_recipe "runit"
include_recipe "apt"
include_recipe "mysql::server"

%w{git git-daemon-run}.each do |pkg|
  package pkg do
    action :install
  end
end

mysql_service "mysqld" do
  port "3306"
  version "6.1.3"
  initial_root_password "changeme"
  bind_address "0.0.0.0"
  data_dir "/data"
  action [:create, :start]
end

runit_service "git-daemon" do
  sv_templates false
end
