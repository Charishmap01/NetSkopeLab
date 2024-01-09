variable "project" {
  description = "Google Cloud Project ID"
  default = "netskope"
  
}

variable "region" {
  description = "Google Cloud region"
  default = "us-east1"
}

variable "cluster_name1" {
  description = "Name of the GKE cluster"
  default = "netskope-dev"
}

variable "cluster_name2" {
  description = "Name of the GKE cluster"
  default = "netskope-qa"
}

variable "machine_type" {
  description = "Machine type for GKE nodes"
  default = "n1-standard-2"
}

variable "disk_size_gb" {
  description = "Disk size for GKE nodes (in GB)"
  default = "100"
}

variable "min_node_count" {
  description = "Minimum number of nodes in the node pool"
  default = "1"
}

variable "max_node_count" {
  description = "Maximum number of nodes in the node pool"
  default = "3"
}

variable "network"{
    default   = "default-network"
}

variable "credentials_file"{
    default   = "/path/to/file.json"
}


variable "node_pool1_name"{
    default   = "nodepool-1"
}

variable "node_pool2_name"{
    default   = "nodepool-2"
}

variable "cluster_name" {
    default  = ["cluster-1", "cluster-2"]
}
