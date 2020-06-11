 variable "ARM_CLIENT_ID" {
     type = string
     description = "azure client ID"
 }

 variable "ARM_CLIENT_SECRET" {
     type = string
     description = "azure sp password"
 }

 variable "ARM_SUBSCRIPTION_ID" {
     type = string
     description = "azure subscription ID"
 }

 variable "ARM_TENANT_ID" {
     type = string
     description = "azure sp tenant id"
 }

 variable "resource_group_name" {
     type = string
     default    = "Kube-Cluster"
     description = "azure resource group name"
 }

 variable "location" {
     type = string
     default = "South Central US"
     description = "azure resource group location"
 }

 variable "cluster_name" {
     type = string
     description = "name of k8s cluster"
 }

 variable "dns_prefix" {
     type = string
     description = "prefix to dns name"
 }

 variable "node_count" {
     type = number
     description = "number of nodes in cluster"
 }

 variable "vm_size" {
     type = string
     default = "Standard_A2_v2"
     description = "azure size designation"
 }

 variable "ssh_public_key" {
     type = string
     description = "path to ssh key"
 }