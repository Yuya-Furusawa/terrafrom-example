data "aws_route53_zone" "hackernews-clone" {
  name = "hackernews-clone.link"
}

resource "aws_route53_record" "hackernews-clone" {
  zone_id = data.aws_route53_zone.hackernews-clone.zone_id
  name = data.aws_route53_zone.hackernews-clone.name
  type = "A"

  alias {
    name = aws_lb.lb.dns_name
    zone_id = aws_lb.lb.zone_id
    evaluate_target_health = true
  }
}