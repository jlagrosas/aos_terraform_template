# Variables declarations

variable "username" {
  default = "test-user"
  type    = string
}

variable "password" {
  default = "ap0ll0ap0ll0"
  type    = string
}

# tenant-name
variable "project" {
  default = "test-project"
  type    = string
}

variable "region" {
  default = "RegionOne"
  type    = string
}

variable "auth_url" {
  default = "http://192.168.89.26:5000/v3/"
  type    = string
}

variable "domain_id" {
  default = "default"
  type    = string
}

variable "project_tag" {
  default = "etrade"
  type    = string
}

variable "env" {
  default = "prod"
  type    = string
}

variable "cidr" {
  type    = list(string)
  default = ["192.168.233.0/24", "192.168.234.0/24", "192.168.235.0/24", "192.168.236.0/24"]
}

# Ubuntu OS image
variable "uos_image_id" {
  type    = string
  default = "2340621f-826e-416d-9269-cc8aa053baba"
}

# 2-4-10
variable "medium_flavor_id" {
  type    = string
  default = "5106bc9c-4df9-4b84-848d-7ed3f25bb5cd"
}

# 2-2-10
variable "small_flavor_id" {
  type    = string
  default = "e5f788ea-2c43-4bc0-ad2d-1968a0114d92"
}
