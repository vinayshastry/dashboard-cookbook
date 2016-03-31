include_recipe "runit"
include_recipe "apt"

runit_service "git-daemon" do
  sv_templates false
end
