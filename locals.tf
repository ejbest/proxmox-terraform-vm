locals {
  proxmox_host              = "192.168.3.104"
  proxmox_node_hostname     = "blue4"
  pm_api_url                = "https://${local.proxmox_host}:8006/api2/json"
  pm_user                   = "root@pam"
  proxmox_host_ssh_password = 88888888
  iso_storage_pool          = "local"
  storage_pool              = "local-lvm"
  cloud-init-disk-name      = "cloud-init-disk-name"
  ip_address                = "192.168.3.131"
  gateway                   = "192.168.3.1"
  hostname                  = "example-vm"
  ipconfig                  = "ip=192.168.3.136/24,gw=192.168.3.1"
  network_bridge            = "vmbr0"
  private_ssh_keyname       = "key.pem"
  ssh_user                  = "ej"
  cores                     = 1
  sockets                   = 1
  memory                    = 1024
  disk_size                 = 20
  vmid                      = 8001
  cloud_init_config_file    = "cloud-init.yaml"
}
