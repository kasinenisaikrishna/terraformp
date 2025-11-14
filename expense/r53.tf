resource "aws_route53_record" "expense" {
    count = length(var.instances_names)
    zone_id = var.zone_id 
    #backend.dawsconnect.org
    name    = "${var.instances_names[count.index]}.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = [output.instances_info[count.index].private_ip]
    allow_overwrite = true
}