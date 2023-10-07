variable "f5xc_api_p12_file" {
  type = string
}

variable "f5xc_api_url" {
  type = string
}

variable "f5xc_api_token" {
  type = string
}

variable "f5xc_api_ca_cert" {
  type = string
  default = ""
}

variable "cluster_name" {
  type = string
  default = ""
}

variable "private_network_name" {
  type = string
  default = ""
}
variable "latitude" {
  type = string
  default = "47.1"
}

variable "longitude" {
  type = string
  default = "8.5"
}
