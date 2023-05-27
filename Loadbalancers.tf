resource "aws_lb" "NLB17" {
name = "NLB17"
internal = false
load_balancer_type = "network"
subnets = ["<your-public-subnet-here>", "<your-public-subnet-here>"]
enable_deletion_protection = false #true if you are not planning on destroying your load balancer
}