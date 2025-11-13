resource "aws_instance" "backend"{
    count = 3
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = {
        Name = var.instances_names[count.index]
    }
}

resource "aws_security_group" "allow_ssh_terraform"{
    name = "allow_sshh" #allow_ssh is already there in my account
    description = "allow port number 22 for ssh access"
    
    #usually we allow everything in egress
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    #for ingress we will allow from_port and to_port and protocol as per our needs
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "allow_sshh"
    }
}