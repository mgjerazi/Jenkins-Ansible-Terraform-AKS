output "public-ip" {
  value = azurerm_public_ip.jenkins.ip_address
}

output "private-ip" {
  value = azurerm_network_interface.jenkins.private_ip_address
}

resource "local_file" "kubeconfig" {
  count    = length(var.kubeconfig_name)
  filename = var.kubeconfig_name[count.index]
  content  = azurerm_kubernetes_cluster.cluster[count.index].kube_config_raw
}