data "aws_caller_identity" "current" {}

 data "aws_ami" "amazon_linux_2" {
   most_recent = true
   owners      = ["313242119113"]

   filter {
     name   = "owner-alias"
     values = ["313242119113"]
   }


   filter {
     name   = "name"
     values = ["amzn2-ami-hvm*"]
   }
 }
