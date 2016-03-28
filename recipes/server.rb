include_recipe "runit"

package "git-daemon-run"
package "git"

runit_service "git-daemon" do
  sv_templates false
end
