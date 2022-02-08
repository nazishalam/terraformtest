resource "aws_instance" "testinstance-01" {
  
region = "ap-southeast-1"

ami = "ami-0cf9783fde88b360f"

instance_type = "t2.small"

subnet_id = "subnet-5611481f"

associate_public_ip_address "{"true"}"

vpc_security_group_ids = [ "sg-00f2016d46494ac9e" ]

key_name {"cloud-collab"}

tags {

Name = "testinstance-01"

}

}
