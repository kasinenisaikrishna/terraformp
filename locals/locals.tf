locals {
  domain_name = "dawsconnect.org"
  zone_id     = "Z033712422B61CO3J7OXS"
  instance_type = var.environment == "mysql" ? "t3.medium" : "t3.micro"
}

