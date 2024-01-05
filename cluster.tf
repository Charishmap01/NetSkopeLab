module "gke_cluster_1" {
  source            = "./module"
  region            = var.region
  cluster_name      = var.cluster_name1
  network           = google_compute_network.default.name
  max_node_count    = 5
  min_node_count    = 1
  machine_type      = var.machine_type
  credentials_file  = var.credentials_file
  project           = var.project
  disk_size_gb      = "1"
  subnetwork        = google_compute_subnetwork.subnet_east1.name
  node_pool_name    = var.node_pool1_name
}

module "gke_cluster_2" {
  source            = "./module"
  region            = var.region
  cluster_name      = var.cluster_name2
  network           = google_compute_network.default.name
  min_node_count    = 1
  max_node_count    = 5
  machine_type      = var.machine_type
  credentials_file  = var.credentials_file
  project           = var.project
  disk_size_gb      = "1"
  subnetwork        = google_compute_subnetwork.subnet_west1.name
  node_pool_name    = var.node_pool2_name
}