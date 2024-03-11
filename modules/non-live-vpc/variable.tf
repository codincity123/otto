
variable "AWS_REGION" {
  default = "us-east-1"
}

# VPC tag name
variable "vpc_tag_name" {
  description = "Name tag for the VPC"
  type        = map(any)
  default = {
    nw-live         = "idl-live-network"
    nw-non-live     = "idl-nonlive-network"
    nw-securitymgmt = "idl-securitymgmt"
  }
}

variable "vpc_cidr" {
  type = map(any)
  default = {
    nw-live         = "192.168.80.0/23"
    nw-non-live     = "192.168.82.0/24"
    nw-securitymgmt = "192.168.83.0/24"
  }
}


variable "nw_nonlive_public_subnet_cidr_block" {
  description = "CIDR block for public subnet"
  type        = map(any)
  default = {

    nw-nonlive-public-ig  = "192.168.82.128/28"
    nw-nonlive-public-fw2 = "192.168.82.160/28"

  }
}

variable "nw_nonlive_private_subnet_cidr_block" {
  description = "CIDR block for nonlive private subnet"
  type        = map(any)
  default = {

    nw-nonlive-private-fw1 = "192.168.82.144/28"


  }
}

variable "nw_nonlive_subnet_cidr_block_dev" {
  description = "CIDR block for nonlive private subnet"
  type        = map(any)
  default = {

    nw-nonlive-dev1 = "192.168.82.0/28"
    nw-nonlive-dev2 = "192.168.82.16/28"
    nw-nonlive-dev3 = "192.168.82.32/28"
    nw-nonlive-dev4 = "192.168.82.48/28"
    nw-nonlive-1 = "192.168.82.176/28"
    
  }
}

variable "nw_nonlive_subnet_cidr_block_qa" {
  description = "CIDR block for nonlive private subnet"
  type        = map(any)
  default = {

    nw-nonlive-qa1 = "192.168.82.64/28"
    nw-nonlive-qa2 = "192.168.82.80/28"
    nw-nonlive-qa3 = "192.168.82.96/28"
    nw-nonlive-qa4 = "192.168.82.112/28"

  }
}

# Non-Live TransitGateway Subnet CIDR blocks
variable "nw_non_live_tgw_subnet_cidr_block" {
  description = "CIDR block for Non Live Transit Gateway subnet"
  type        = map(any)
  default = {

    nw-non-live-tgw-attac1 = "192.168.82.208/28"
    nw-non-live-tgw-attac2 = "192.168.82.224/28"
    nw-non-live-tgw-attac3 = "192.168.82.240/28"
    
  }
}


variable "subnet_tag_names" {
  type = map(string)
  default = {
    
    nw-non-live-tgw-attac1 = "idl-non-live-pvt-tgw-attac1"
    nw-non-live-tgw-attac2 = "idl-non-live-pvt-tgw-attac2"
    nw-non-live-tgw-attac3 = "idl-non-live-pvt-tgw-attac3"

    nw-nonlive-public-ig   = "idl-nonlive-public-ig"
    nw-nonlive-private-fw1 = "idl-nonlive-private-fw1"
    nw-nonlive-public-fw2  = "idl-nonlive-public-fw2"

    nw-nonlive-dev1 = "idl-nonlive-dev1"
    nw-nonlive-dev2 = "idl-nonlive-dev2"
    nw-nonlive-dev3 = "idl-nonlive-dev3"
    nw-nonlive-dev4 = "idl-nonlive-dev4"
    nw-nonlive-1    = "idl-nonlive-1"

    nw-nonlive-qa1 = "idl-nonlive-qa1"
    nw-nonlive-qa2 = "idl-nonlive-qa2"
    nw-nonlive-qa3 = "idl-nonlive-qa3"
    nw-nonlive-qa4 = "idl-nonlive-qa4"

    
  }
}

variable "nw_subnet_az" {
  description = "Availability zone for private subnet 2"
  type        = map(any)
  default = {
    az_a = "us-east-1a"
    az_b = "us-east-1b"
    az_c = "us-east-1c"

  }
}

variable "rt_tag_name" {
  description = "Name tag for the Route Table"
  type        = map(any)
  default = {
    
    idl-live-fw-private_rt   = "idl-live-fw-private-rt"

    idl-non-live-fw-tgw-atta_rt   = "idl-non-live-fw-tgw-atta-rt"
    idl-nonlive-fw-private_rt   = "idl-nonlive-fw-private-rt"
    idl-nonlive-networklb-public_rt = "idl-nonlive-networklb-public_rt"
    idl-nonlive-fw-public_rt = "idl-nonlive-fw-public_rt"
    idl-nonlive-fw-tgw-atta-rt = "idl-nonlive-fw-tgw-atta-rt"
    
    
  }
}

