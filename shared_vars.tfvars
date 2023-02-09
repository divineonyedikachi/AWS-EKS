region               = "us-east-1"
project_name         = "sample"
environment          = "Dev"
owner                = "Divine"
cost_center          = "1234"
cluster_version      = "1.22"
cluster_subnet_names = ["bookstore-app-vpc-public*"]
cluster_endpoint_private_access_cidrs = [
  "98.218.211.45/32"
]

gp_node_group_disk_size        = 100
gp_node_group_instance_types   = ["t3.medium"]
gp_node_group_desired_capacity = 2
gp_node_group_max_capacity     = 7
gp_node_group_min_capacity     = 2
gp_node_group_capacity_type    = "ON_DEMAND"
cluster_kms_key_alias          = "aws/ebs"
vpc_tag_name                   = ["bookstore-app-vpc*"]


