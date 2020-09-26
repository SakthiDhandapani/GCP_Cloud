variable "config_path"{
    default = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json"
}
variable "gcp_project"{
    default ="XXXXXXXXX"
}
variable "var_region"{
    default ="us-west1"
}
variable "var_auto_create_subnetworks"{
    default ="false"
}
variable "var_env_name"{
    default ="dev"
}
variable "var_subnet_count"{
    default = 2
}
variable "var_subnet_cidr"{
    default = ["10.10.0.0/16","10.20.0.0/18"]
}
variable "var_host_project_id"{
    description="Enter you host project id"
}
variable "service_project_ids"{
    description="Enter the service project ids"
}
