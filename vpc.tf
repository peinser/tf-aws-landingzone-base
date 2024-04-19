######################################
#	Development VPC
######################################

module "vpc_dev" {
  source = "github.com/peinser/tf-aws-landingzone-module-vpc"

  create_vpc = true
  env        = "dev"

  vpc_name = "vpc-dev"
  vpc_cidr = "10.0.0.0/16"
}

# ------------------------------------------------------------------------------------


######################################
#	Production VPC
######################################

module "vpc_prod" {
  source = "github.com/peinser/tf-aws-landingzone-module-vpc"

  create_vpc = true
  env        = "prod"

  vpc_name = "vpc-prod"
  vpc_cidr = "10.1.0.0/16"

  single_nat_gateway = true
}