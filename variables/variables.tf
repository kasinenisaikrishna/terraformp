variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "this is the ami_id of devops-practice which is rhel9"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    type = map #optional
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "sg_name" {
    default = "allow_sshh"
}

variable "sg_description" {
    default = "allow port number 22 for ssh access"
}

variable "from_port" {
    type = number
    default = 22
}

variable "to_port" {
    type = number
    default = 22
}

variable "protocol" {
    type = string 
    default = "tcp"
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}