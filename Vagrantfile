#require 'vagrant-openstack-provider'

Vagrant.configure('2') do |config|

  config.vm.box       = 'openstack-test1'
  config.ssh.private_key_path = "#{ENV['PATH_TO_KEY_FILE']}/#{ENV['KEY_PAIR']}.pem"
  config.ssh.username = 'cloud-user'
  config.ssh.proxy_command= ENV['SSH_PROXY_COMMAND'] if ENV['SSH_PROXY_COMMAND']

  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = "#{ENV['PATH_TO_COOKBOOK']}/Berksfile"

  config.vm.synced_folder ".", "/home/nimbusadmin", type: "rsync",
                rsync__args: ["--verbose", "--rsync-path='rsync'", "--archive", "--delete", "-z"]

  vms = [{name: 'web', recipes: ['dashboard::apt', 'dashboard::nginx']},
         {name: 'data', recipes: ['dashboard::apt', 'dashboard::mysql']}]

  config.vm.provider :openstack do |os|
    os.openstack_auth_url = ENV['AUTH_URL']
    os.openstack_network_url = ENV['NETWORK_URL']
    os.username           = ENV['USERNAME']
    os.password           = ENV['API_KEY']
    os.tenant_name        = ENV['TENANT_NAME']
    os.region             = ENV['REGION']
    os.flavor             = ENV['FLAVOR']
    os.image              = ENV['IMAGE']
    os.networks           = ENV['NETWORKS'].split(',')
    os.keypair_name       = ENV['KEY_PAIR']
    os.ssh_timeout        = 300
    os.server_active_timeout = 3000
    os.user_data = <<-EOF
          #cloud-config
          users:
          - default
        EOF
  end

  vms.each do |vm|
    config.vm.define vm[:name] do |vm_def|
      vm_def.vm.provider :openstack do |os|
        os.server_name = "dashboard_#{vm[:name]}"
      end
      vm_def.vm.provision 'chef_zero' do |chef|
        chef.cookbooks_path = './'
        chef.data_bags_path = 'data_bags'
        chef.nodes_path = 'nodes'
        chef.roles_path = 'roles'
        vm[:recipes].each do |recipe|
             chef.add_recipe recipe
        end
      end
    end
  end
end
