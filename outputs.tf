output "route53_zones_id" {
  description = "Map of id values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_zones_arn" {
  description = "Map of arn values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "route53_zones_comment" {
  description = "Map of comment values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "route53_zones_delegation_set_id" {
  description = "Map of delegation_set_id values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.delegation_set_id if v.delegation_set_id != null && length(v.delegation_set_id) > 0 }
}
output "route53_zones_enable_accelerated_recovery" {
  description = "Map of enable_accelerated_recovery values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.enable_accelerated_recovery if v.enable_accelerated_recovery != null }
}
output "route53_zones_force_destroy" {
  description = "Map of force_destroy values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.force_destroy if v.force_destroy != null }
}
output "route53_zones_name" {
  description = "Map of name values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.name if v.name != null && length(v.name) > 0 }
}
output "route53_zones_name_servers" {
  description = "Map of name_servers values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.name_servers if v.name_servers != null && length(v.name_servers) > 0 }
}
output "route53_zones_primary_name_server" {
  description = "Map of primary_name_server values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.primary_name_server if v.primary_name_server != null && length(v.primary_name_server) > 0 }
}
output "route53_zones_tags" {
  description = "Map of tags values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "route53_zones_tags_all" {
  description = "Map of tags_all values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "route53_zones_vpc" {
  description = "Map of vpc values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.vpc if v.vpc != null && length(v.vpc) > 0 }
}
output "route53_zones_zone_id" {
  description = "Map of zone_id values across all route53_zones, keyed the same as var.route53_zones"
  value       = { for k, v in aws_route53_zone.route53_zones : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

