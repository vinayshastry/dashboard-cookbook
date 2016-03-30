include_recipe "runit"
include_recipe "apt"
include_recipe "mysql::server"

%w{git vim curl wget}.each do |pkg|
  package pkg do
    action :install
  end
end

mysql_service "dashboard-mysqld" do
  port "3306"
  version "6.0"
  # initial_root_password "changeme"
  # bind_address "0.0.0.0"
  data_dir "/data"
  action [:create, :restart]
end

#
# runit_service "git-daemon" do
#   sv_templates false
# end
