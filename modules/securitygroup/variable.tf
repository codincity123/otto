
variable "AWS_REGION" {
  default = "us-east-1"
}

variable "sgmgmt_vpc_id_input" {
 type = string
}


variable "sg_group_name" {
  description = "Name of the Security Group Name"
  type        = map(any)
  default = {
    sg_opensearch = "otto-network-opensearch-sg"
  }
}

variable "sg_tag_name" {
  description = "Name tag for Security group"
  type        = map(any)
  default = {
    sg_opensearch_name = "opensearch_sg"
  }
}

variable "from_port_opensearch" {
  description = "From port for Opensearch"
  type        = number
  default     = 443
}

variable "to_port_opensearch" {
  description = "To port for Opensearch"
  type        = number
  default     = 443
}

variable "allowed_cidr_blocks_opensearch" {
  description = "CIDR blocks for Opensearch"
  type        = map(list(string))
  default = {
    https = [
      "10.0.0.0/16",
      "192.168.82.0/24",
      "192.168.83.0/24",
      "192.168.80.0/23",
      "10.221.192.0/18",
      "10.213.133.128/25",
      "10.214.128.0/25",
      "10.221.64.0/18"
    ]
  }


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




