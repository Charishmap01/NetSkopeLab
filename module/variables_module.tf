variable "credentials_file" {
  description = "Path to the Google Cloud credentials file"
}

variable "project" {
  description = "Google Cloud Project ID"
}

variable "region" {
  description = "Google Cloud region"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
}

variable "machine_type" {
  description = "Machine type for GKE nodes"
}

variable "disk_size_gb" {
  description = "Disk size for GKE nodes (in GB)"
}

variable "min_node_count" {
  description = "Minimum number of nodes in the node pool"
}

variable "max_node_count" {
  description = "Maximum number of nodes in the node pool"
}

variable "network"{
  description = "network"
}

variable "subnetwork"{
  description = "subnetwork"
}

variable "node_pool_name"{
    description = "node pool name"
}