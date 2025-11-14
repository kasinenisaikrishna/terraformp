variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}

# variable "zone_id" {
#   default = "Z033712422B61CO3J7OXS" #we get this from route53 hosted zones and dawsconnect hosted zone details and hosted zone id
# }

# variable "domain_name" {
#   default = "dawsconnect.org"
# }

variable "environment" {
    default = "prod"  
}