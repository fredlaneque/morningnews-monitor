# Declaration of the variable for the EC2 instance's EIP
variable "AWS_EIP_ALLOC_ID_MONITOR" {
  description = "Elastic IP used for the created EC2 Instance"
  type        = string
  default     = "eipalloc-0c33c26cf40bfe6e9"
}
# Declaration of the variable for the AWS access key ID
variable "AWS_ACCESS_KEY_ID" {
  description = "The ID of the AWS access key"
  type        = string
}
# Declaration of the variable for the AWS secret key
variable "AWS_SECRET_ACCESS_KEY" {
  description = "The AWS secret key"
  type        = string
}
# Declaration of the variable for the AWS region
variable "AWS_DEFAULT_REGION" {
  description = "The AWS region to use"
  type        = string
  default     = "eu-west-3"
}
# Declaration of the variable for the instances tags
variable "AWS_INSTANCE_TAGS" {
  description = "The tags to apply to the EC2 instances"
  type        = map(string)
  default = {
    Name = "morningnews-monitor"
    Environment = "prod"
    Url = "monitor.isinetwork.fr"
  }
}
# Declaration of the variable for the SSH Public key
variable "AWS_KEY_PUB" {
  description = "Public key allowed to access EC2 instances"
  type        = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC+DdwFAg2rh79GR7u0H8dSRwGcBmTiJp5RPTisnPBinhJKvlXHZdJm1eCXkimHHj1NdX+lJSGNj94yHYnPsziRFqJH0upnbXX+LndEu24mnsmqhBstQWSB91dhJPNohYBKWTEfIfOMcSpVveM8uqKUV+WG4/vXdoboWJQnv9Yh/7A2BjzU6fghVhUAdLRekMjtE1EOPwfDDxjFTnuwl8RRXx3b/+8Cfkcqk/hvODgLvG0R1CyE6U7o40k6t12hjNhKNf+yHL0H2hoFpiXXRAr1qtdJo+xjkMOW6ngL0dOnOXz+ZF2Ju3U0oBRuudmr9zMY19/6yoLihrEJM9GwsMiX8KoSKkD8jc9qmZXd94r1HeOz18ISKqMmAUjEaeCrDgvL0y+UklRI90cXTUHQzlHmVgR3MsXnsrO1R2GjtfiKlLUVzmY0v09IF/YHRsLH/+R+8Wxu2CAru8YwBTdMBmejGI9pghx5kcUwOwr0Bl8Tf+R9h/bG+MkyjVih9D123y9qys5wJt4i1bS/DOAwBHDv6zad8KiT647wWcGmHlImXbN05Vd+jPcpOlDvtldeEhaZ11MNz5pka9KdYEfFOidGVYKeGzqusahfVRm8if+rcMJ6IZW3kP8WeMG/29QCM/AyOOF1WmCPVhf+6lRuoUvG//YFvHSfyOIZtSwPAPsLow== aws-key-pub"
}