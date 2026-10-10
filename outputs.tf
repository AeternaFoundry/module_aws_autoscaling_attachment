output "autoscaling_attachments_id" {
  description = "Map of id values across all autoscaling_attachments, keyed the same as var.autoscaling_attachments"
  value       = { for k, v in aws_autoscaling_attachment.autoscaling_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "autoscaling_attachments_autoscaling_group_name" {
  description = "Map of autoscaling_group_name values across all autoscaling_attachments, keyed the same as var.autoscaling_attachments"
  value       = { for k, v in aws_autoscaling_attachment.autoscaling_attachments : k => v.autoscaling_group_name if v.autoscaling_group_name != null && length(v.autoscaling_group_name) > 0 }
}
output "autoscaling_attachments_elb" {
  description = "Map of elb values across all autoscaling_attachments, keyed the same as var.autoscaling_attachments"
  value       = { for k, v in aws_autoscaling_attachment.autoscaling_attachments : k => v.elb if v.elb != null && length(v.elb) > 0 }
}
output "autoscaling_attachments_lb_target_group_arn" {
  description = "Map of lb_target_group_arn values across all autoscaling_attachments, keyed the same as var.autoscaling_attachments"
  value       = { for k, v in aws_autoscaling_attachment.autoscaling_attachments : k => v.lb_target_group_arn if v.lb_target_group_arn != null && length(v.lb_target_group_arn) > 0 }
}
output "autoscaling_attachments_region" {
  description = "Map of region values across all autoscaling_attachments, keyed the same as var.autoscaling_attachments"
  value       = { for k, v in aws_autoscaling_attachment.autoscaling_attachments : k => v.region if v.region != null && length(v.region) > 0 }
}

