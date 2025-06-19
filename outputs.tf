output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "web_instance_public_ips" {
  description = "Public IPs of the web-tier EC2 instances (Nginx reverse proxies)"
  value       = aws_vpc.main
}

output "web_instance_ids" {
  description = "IDs of the web-tier EC2 instances"
  value       = [for instance in aws_instance.web_instance : instance.id]
}

output "app_instance_private_ips" {
  description = "Private IPs of the app-tier EC2 instances"
  value       = [for instance in aws_instance.app_instance : instance.private_ip]
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.alb.dns_name
}
