resource "google_container_cluster" "gke_cluster" {
  project                     = var.project
  network                     = var.network
  subnetwork                  = var.subnetwork
  name                        = var.cluster_name
  location                    = var.region
  initial_node_count          = 1
  remove_default_node_pool    = true

  addons_config {
    http_load_balancing {
      disabled = false
    }

    horizontal_pod_autoscaling {
      disabled = false
    }

    network_policy_config {
      disabled = false
    }
  }
  private_cluster_config {
    enable_private_endpoint = false
    enable_private_nodes    = false
    //master_ipv4_cidr_block  = "10.10.0.0/28"
  }
  
  workload_identity_config {
    workload_pool = "netskope.svc.id.goog"
  }
  
  /**** cidr range for pod and services
  ip_allocation_policy {
    //cluster_ipv4_cidr_block  = "10.1.32.0/19"
    //services_ipv4_cidr_block = "10.37.0.0/20"
  }  
  *************/
 
 /********** cidr range for master authorized n/w
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = "35.222.141.60/32"
      display_name = "ipwhitelist range1"
    }
    cidr_blocks {
      cidr_block   = "44.227.48.205/32"
      display_name = "ipwhitelist range2"
    } 
  }
  ***********/
}

resource "google_container_node_pool" "cluster_node_pool" {
  name       = var.node_pool_name
  location   = var.region
  cluster    = google_container_cluster.gke_cluster.name
  node_count = 1
  project    = var.project
  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }

  node_config {
    preemptible  = true
    machine_type = var.machine_type

    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}