

mysql_service "server" do # service name is mysql-server
  port "3306"
  bind_address "0.0.0.0"
  initial_root_password "changeme"
  data_dir "/data"
  action [:create, :start]
end

mysql_config "server" do
  source "dashboard.cnf.erb"
  notifies :restart, "mysql_service[server]"
  action :create
end
