# module "records" {
#   source = "terraform-aws-modules/route53/aws"
#   for_each = var.instances
# #   zone_name = var.zone_name
#   records = [
#     {
#         name    = "${each.key}"
#         type    = "A"
#         ttl     = 1
#         records = [
#             each.key == "Web" ? each.value.public_ip : each.value.private_ip
#         ]
#     }
#   ]
# }



resource "aws_route53_record" "www" {
    for_each = local.ips
    zone_id = var.zone_id
    name = "${each.key}.${var.domain}"
    type = "A"
    ttl = 1
    records = [ each.key == "web" ? each.value.public_ip : each.value.private_ip ]

}
