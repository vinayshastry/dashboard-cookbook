# include_recipe "apt"
# include_recipe "nginx"
#
# # use custom nginx.conf, rather than the one that ships in the nginx cookbook
# # this avoids the nginx and dasboard cookbooks collisons
# resources('template[nginx.conf]').cookbook 'dashboard'
#
# package 'nginx' do
#   action :install
# end
#
# service 'nginx' do
#   action [ :enable, :start ]
# end
#
# cookbook_file "/usr/share/nginx/www/index.html" do
#   source "index.html"
#   mode "0644"
# end
