# NetSkopeLab1
This Repo consists of two branches terraform and python

Terraform branch

The Terraform branch has a module folder where the gke cluster along with the nodepool and the variables required for it are defined.
This module can referred and reused for creating as many clusters as required.

While the other files consisting at the root level are network.tf, provider.tf, variables.tf and cluster.tf

network.tf
  
This is where the network and subnetwork are defined for the clusters.

provider.tf
  
Terraform provider are the plugins which enables the  API calls from the terraform to the cloud where we would like to deploy the infrastructure. Here we have defined the version of the provider  and also the version of terraform that the code is compatible with.

variables.tf
 
All the variables required for the infrastructure as code are provided  here. We can refer to these variables while executing the code.

cluster.tf
  
This file consists of the clusters that we would like to create. This is created by referring to the module we have defined. Executing this file will create two clusters along with the nodepool.

Github Actions Workflow
  
A sanity check pipeline is created where the pipeline executes once the code is pushed to main branch. This check validates the terraform init and terraform validate commands which ensures the code sustainability.

