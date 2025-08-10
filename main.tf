# this file is going to create the SERVER
# the duty of this server is a jump server
# we describe this as a bastion server
module "bastion-host" {
  source                    = "git::https://github.com/ejbest/proxmox-base-module.git//?ref=main"
  pve_vm_depends_on         = []                          # ignore or add any dependency if there
  proxmox_host_node         = local.proxmox_node_hostname # hostname of the proxmox base host
  proxmox_host_ip_address   = local.proxmox_host
  proxmox_host_ssh_password = local.proxmox_host_ssh_password
  vmid                      = local.vmid # The vm id; each VM gets it's own
  hostname                  = local.hostname
  ip_address                = local.ip_address           # Static ip address to assign to the vm
  gateway                   = local.gateway              # Gateway
  ipconfig                  = local.ipconfig             # Not needed though but without it theere are clouinit warnings.
  cloud_init_disk_name      = local.cloud-init-disk-name # Name of the cloud init disk to be created
  ssh_user                  = local.ssh_user             # ssh user
  private_ssh_keyname       = local.private_ssh_keyname
  cores                     = local.cores
  sockets                   = local.sockets
  memory                    = local.memory
  disk_size                 = local.disk_size
  storage_pool              = local.storage_pool
  iso_storage_pool          = local.iso_storage_pool
  network_bridge            = local.network_bridge
  cloud_init_config_file    = local.cloud_init_config_file
}
