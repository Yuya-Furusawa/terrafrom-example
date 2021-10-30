resource "aws_acm_certificate_validation" "hackernews-clone" {
  certificate_arn = aws_acm_certificate.certificate.arn
  validation_record_fqdns = [for record in aws_route53_record.hackernews-clone_certificate : record.fqdn]
}