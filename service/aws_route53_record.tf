resource "aws_route53_record" "hackernews-clone_certificate" {
  zone_id = data.aws_route53_zone.hackernews-clone.zone_id

  for_each = {
    for dvo in aws_acm_certificate.certificate.domain_validation_options : dvo.domain_name => {
      name = dvo.resource_record_name
      record = dvo.resource_record_value
      type = dvo.resource_record_type
    }
  }

  name = each.value.name
  records = [each.value.record]
  type = each.value.type
  ttl = 60
}