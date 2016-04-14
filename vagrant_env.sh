export USERNAME=<openstack_api_username>
export API_KEY=<openstack_api_password>
export AUTH_URL=<openstack_auth_api_url>
export NETWORK_URL=<openstack_network_api_url>
export TENANT_NAME=<openstack_tenant_name>
export REGION=<openstack_region>
export SSH_USERNAME=<openstack_ssh_username>
export SSH_PASSWORD=<openstack_ssh_password>
export FLAVOR=<openstack_falvor> #eg. CO3-Large
export IMAGE=<openstack_image> #eg. Ubuntu-14.04
export NETWORKS=<comma separated list of networks for vm to bind to> #eg. CK-Data-Net,CK-Monitor-Net
export KEY_PAIR=<key-pair names from openstack>
export PATH_TO_COOKBOOK=<path to cookbook where cookbook needs to be picked up>

# this is for tunnelling through the jumpbox from dev box.
export SSH_PROXY_COMMAND=<any ssh proxy command for tunnelling through jump box>

#Path where ssh key private key with <KEY_PAIR>.pem as filename is placed
export PATH_TO_KEY_FILE=<directory where KEY_PAIR.pem is placed>
