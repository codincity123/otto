# VPC - Security Management
resource "aws_vpc" "idl-securitymgmt-network" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  # cidr_block           = "${lookup(var.vpc_cidr,terraform.workspace)}"
  cidr_block           = var.vpc_cidr["nw-securitymgmt"]
  enable_dns_support   = true
  enable_dns_hostnames = true

  # count = var.isenv == "nw-securitymgmt" ? 1 : 0

  tags = {
    Name = var.vpc_tag_name["nw-securitymgmt"]
    #Environment = terraform.workspace
  }
}

output "sgmgmt_vpc_id_output"{
  value = aws_vpc.idl-securitymgmt-network.id
}




resource "aws_subnet" "idl-securitymgmt-private-fw1" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-securitymgmt-network.id
  cidr_block        = var.nw_securitymgmt_private_subnet_cidr_block["nw-securitymgmt-private-fw1"]
  availability_zone = var.nw_subnet_az["az_c"]

  # count = var.isenv == "nw-securitymgmt" ? 1 : 0

  tags = {
    Name = var.subnet_tag_names["nw-securitymgmt-private-fw1"]

  }
}

output "smgmt_idl-securitymgmt1_output"{
  value = aws_subnet.idl-securitymgmt-private-fw1.id
}

resource "aws_subnet" "idl-securitymgmt-private-fw2" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-securitymgmt-network.id
  cidr_block        = var.nw_securitymgmt_private_subnet_cidr_block["nw-securitymgmt-private-fw2"]
  availability_zone = var.nw_subnet_az["az_b"]

  # count = var.isenv == "nw-securitymgmt" ? 1 : 0
  tags = {
    Name = var.subnet_tag_names["nw-securitymgmt-private-fw2"]

  }
}

output "smgmt_idl-securitymgmt2_output"{
  value = aws_subnet.idl-securitymgmt-private-fw2.id
}


resource "aws_subnet" "idl-securitymgmt-private-fw3" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-securitymgmt-network.id
  cidr_block        = var.nw_securitymgmt_private_subnet_cidr_block["nw-securitymgmt-private-fw3"]
  availability_zone = var.nw_subnet_az["az_a"]

  # count = var.isenv == "nw-securitymgmt" ? 1 : 0

  tags = {
    Name = var.subnet_tag_names["nw-securitymgmt-private-fw3"]

  }
}

output "smgmt_idl-securitymgmt3_output"{
  value = aws_subnet.idl-securitymgmt-private-fw3.id
}

resource "aws_subnet" "idl-securitymgmt-tgwatt1" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-securitymgmt-network.id
  cidr_block        = var.nw_securitymgmt_private_subnet_cidr_block["nw-securitymgmt-tgwatt1"]
  availability_zone = var.nw_subnet_az["az_a"]
  tags = {
    Name = var.subnet_tag_names["nw-securitymgmt-tgwatt1"]
  }
 }

 resource "aws_subnet" "idl-securitymgmt-tgwatt2" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-securitymgmt-network.id
  cidr_block        = var.nw_securitymgmt_private_subnet_cidr_block["nw-securitymgmt-tgwatt2"]
  availability_zone = var.nw_subnet_az["az_b"]
  tags = {
    Name = var.subnet_tag_names["nw-securitymgmt-tgwatt2"]
  }
 }

  resource "aws_subnet" "idl-securitymgmt-tgwatt3" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-securitymgmt-network.id
  cidr_block        = var.nw_securitymgmt_private_subnet_cidr_block["nw-securitymgmt-tgwatt3"]
  availability_zone = var.nw_subnet_az["az_c"]
  tags = {
    Name = var.subnet_tag_names["nw-securitymgmt-tgwatt3"]
  }
 }