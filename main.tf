resource "aws_instance" "testinstance-02" {

ami = "ami-0332e2eb2b94e44e0"

instance_type = "t3.large"

subnet_id = "subnet-a2266dca"

associate_public_ip_address "{"true"}"

vpc_security_group_ids = [ "sg-0e091161531fd16b0" ]

key_name {"roombr-staging-admin"}

tags {

Name = "testinstance-02"

}

}
