module "vpc" {
  source = "github.com/peinser/tf-aws-landingzone-module-vpc"

  env = var.env

  create_vpc = var.create_vpc
  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr

  # VPC flow logs
  create_vpc_flow_logs               = var.create_vpc_flow_logs
  vpc_flow_logs_retention_days       = var.vpc_flow_logs_retention_days
  vpc_flow_logs_aggregation_interval = var.vpc_flow_logs_aggregation_interval

  # Subnets
  create_database_subnets     = var.create_database_subnets
  private_subnet_name_prefix  = var.private_subnet_name_prefix
  public_subnet_name_prefix   = var.public_subnet_name_prefix
  database_subnet_name_prefix = var.database_subnet_name_prefix

  private_subnet_cidr_blocks  = var.private_subnet_cidr_blocks
  public_subnet_cidr_blocks   = var.public_subnet_cidr_blocks
  database_subnet_cidr_blocks = var.database_subnet_cidr_blocks

  # NAT gateway
  create_nat_gateways = var.create_nat_gateways
  single_nat_gateway  = var.single_nat_gateway
  nat_gateway_per_az  = var.nat_gateway_per_az

  # VPC S3 endpoint
  create_vpc_endpoints = var.create_vpc_endpoints
}