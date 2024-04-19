env = "prod"

######################################
#	VPC module
######################################

# VPC
create_vpc = true
vpc_name = "vpc-prod"
vpc_cidr = "10.1.0.0/16"

# VPC flow logs
#create_vpc_flow_logs               = true
#vpc_flow_logs_retention_days       = 7
#vpc_flow_logs_aggregation_interval = 600

# Subnets
#create_database_subnets     = true
#private_subnet_name_prefix  = "private"
#public_subnet_name_prefix   = "public"
#database_subnet_name_prefix = "database"

#private_subnet_cidr_blocks  = ["10.0.1.0/24", "10.0.2.0/24"]
#public_subnet_cidr_blocks   = ["10.0.100.0/24", "10.0.101.0/24"]
#database_subnet_cidr_blocks = ["10.0.10.0/24", "10.0.11.0/24"]

# NAT gateway
#create_nat_gateways = true
single_nat_gateway  = true
#nat_gateway_per_az  = false

# VPC S3 endpoint
#create_vpc_endpoints = true

# ------------------------------------------------------------------------------------


######################################
#	EKS module
######################################

# values...