
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


variable "nw_securitymgmt_private_subnet_cidr_block" {
  description = "CIDR block for nonlive private subnet"
  type        = map(any)
  default = {

    nw-securitymgmt-private-fw1 = "192.168.83.0/26"
    nw-securitymgmt-private-fw2 = "192.168.83.64/26"
    nw-securitymgmt-private-fw3 = "192.168.83.128/26"
    nw-securitymgmt-tgwatt1     = "192.168.83.192/28"
    nw-securitymgmt-tgwatt2     = "192.168.83.208/28"
    nw-securitymgmt-tgwatt3     = "192.168.83.224/28"

  }
}

variable "subnet_tag_names" {
  type = map(string)
  default = {
    

    nw-securitymgmt-private-fw1 = "idl-private-securitymgmt1"
    nw-securitymgmt-private-fw2 = "idl-private-securitymgmt2"
    nw-securitymgmt-private-fw3 = "idl-private-securitymgmt3"

    nw-securitymgmt-tgwatt1 = "idl-securitymgmt-tgwatt1"
    nw-securitymgmt-tgwatt2 = "idl-securitymgmt-tgwatt2"
    nw-securitymgmt-tgwatt3 = "idl-securitymgmt-tgwatt3"


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

