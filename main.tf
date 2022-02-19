resource "aws_instance" "testinstance-02" {

ami = "ami-009f36f79af6062cc"

instance_type = "t3.large"

subnet_id = "subnet-a2266dca"

vpc_security_group_ids = [ "sg-0e091161531fd16b0" ]

key_name = "roombr-staging-admin"

tags = {
        Name = "Terraform EC2"
    }
        
provisioner "file" {
    source      = "/home/developer/nazish_data"
    destination = "/home/developer/nazish_data"
  }

  connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "developer"
      //private_key = file("/home/developer/private_key/roombr-staging-developer")
      private_key = file("/var/lib/jenkins/private_key/roombr-staging-developer")
      timeout     = "3m"
   }

}
