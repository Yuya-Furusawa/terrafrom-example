resource "aws_acm_certificate" "certificate" {
  domain_name = data.aws_route53_zone.hackernews-clone.name
  subject_alternative_names = []
  validation_method = "DNS"
}