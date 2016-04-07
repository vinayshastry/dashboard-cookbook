

mysql_service "server" do # service name is mysql-server
  # bind_address "0.0.0.0"
  port "3306"
  initial_root_password "changeme"
  data_dir "/data"
  action [:create, :start]
end
