variable "region_name"{
    default ="us-west1"
}
variable "env_name"{
    default ="dev"
}
variable "subnet_count"{
    default = 2
}
variable "subnet_cidr"{
    default =["10.10.0.0/16","10.20.0.0/18"]
}