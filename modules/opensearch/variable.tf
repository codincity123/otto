variable "smgmt_sg_id_input" {
 type = string
}

variable "smgmt_idl-securitymgmt1_input" {
 type = string
}

variable "smgmt_idl-securitymgmt2_input" {
 type = string
}

variable "smgmt_idl-securitymgmt3_input" {
 type = string
}

variable "master_count"{
    type = number
    default = 3
}

variable "master_type"{
    type = string
    default = "t3.small.search"
}

variable "instance_count"{
     type = number
     default = 3
}

variable "instance_type"{
    type = string
    default = "t3.small.search"
}

variable "ebs_option"{
    type = bool
    default = true
}

variable "ebs_volume_size"{
    type = number
    default = 10
}
   

