# outputs file
# using a format that helps for clarity 

output "ip_address__________________" { value = local.ip_address }
output "server_id___________________" { value = local.hostname }
output "proxmox_host________________" { value = local.proxmox_host }
output "promox_host_node____________" { value = local.proxmox_node_hostname }

output "ssh_command" {
  value = "\n\nssh -i ${local.private_ssh_keyname} ${local.ssh_user}@${local.ip_address}\n\n"
}
