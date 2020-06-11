provider "azurerm" {
    version = "=2.14.0"
features {}
}

resource "azurerm_resource_group" "KubCluster" {
  name = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                  = var.cluster_name
  location              = azurerm_resource_group.KubCluster.location
  resource_group_name   = azurerm_resource_group.KubCluster.name
  dns_prefix            = var.dns_prefix

  default_node_pool {
    name = "default"
    node_count = var.node_count
    vm_size = var.vm_size
  }

  linux_profile {
    admin_username = "ubuntu"

    ssh_key {
      key_data = file("${var.ssh_public_key}")
    }
  }

  service_principal {
    client_id       = var.ARM_CLIENT_ID
    client_secret   = var.ARM_CLIENT_SECRET
  }
}

output "kube_config" {
    value = azurerm_kubernetes_cluster.k8s.kube_config_raw
}

output "host" {
    value = azurerm_kubernetes_cluster.k8s.kube_config.0.host
}