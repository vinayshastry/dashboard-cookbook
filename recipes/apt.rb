include_recipe "apt"

%w{git curl make }.each do |pkg|
  package pkg do
    action :install
  end
end
