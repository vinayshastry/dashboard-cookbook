# Update the Apt repository at the start of a chef-client run
apt_update "all platforms" do
  action :update
end

#
# apt_update 'all platforms' do
#   frequency 86400
#   action :periodic
# end

%w{git curl wget }.each do |pkg|
  package pkg do
    action :install
  end
end
