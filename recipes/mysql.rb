include_recipe "mysql::server"

mysql_service "mysqld" do
  port "3306"
  version "5.5"
  # initial_root_password "changeme"
  # bind_address "0.0.0.0"
  data_dir "/data"
  action [:create, :restart]
end
