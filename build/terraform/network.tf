# Allocate EIP to EC2 Instance (Fixed IP address)
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.prod_morningnews_monitor.id
  allocation_id = var.AWS_EIP_ALLOC_ID_MONITOR
}
# Configure Firewall Inbound/Outbound rules
resource "aws_security_group" "prod_morningnews_monitor_sg" {
  name        = "prod-morningnews-monitor-sg"
  description = "Security group for Morning News Monitoring"
  # Inbound rule to allow prometheus from anywhere
  ingress {
    from_port   = 9090
    to_port     = 9090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Inbound rule to allow prometheus from anywhere
  ingress {
    from_port   = 9091
    to_port     = 9091
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Inbound rule to allow prometheus from anywhere
  ingress {
    from_port   = 9093
    to_port     = 9093
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Inbound rule to allow SSH from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Inbound rule to allow ICMP (ping) from anywhere
  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Outbound rule to allow internet connection
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}