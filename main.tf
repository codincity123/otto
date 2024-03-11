module "live-vpc" {
  source = "./modules/live-vpc"

}

module "non-live-vpc" {
  source = "./modules/non-live-vpc"
}

module "securitymgmt-vpc" {
  source = "./modules/securitymgmt-vpc"
}

module "securitygroup" {
  source = "./modules/securitygroup"
  sgmgmt_vpc_id_input = module.securitymgmt-vpc.sgmgmt_vpc_id_output
}

module "opensearch" {
  source = "./modules/opensearch"
  smgmt_sg_id_input = module.securitygroup.smgmt_sg_id_output
  smgmt_idl-securitymgmt1_input = module.securitymgmt-vpc.smgmt_idl-securitymgmt1_output
  smgmt_idl-securitymgmt2_input = module.securitymgmt-vpc.smgmt_idl-securitymgmt2_output
  smgmt_idl-securitymgmt3_input = module.securitymgmt-vpc.smgmt_idl-securitymgmt3_output
}






