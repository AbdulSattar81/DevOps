How to think about starting any Terraform file

Ask yourself four questions in order:

1. Which tool do I need? The terraform block declares the AWS provider and its version, so Terraform knows what to download.
2. Where am I deploying? The provider block sets the region.
3. What existing information do I need to look up? Each data block reads something that already exists, like the latest Ubuntu image.
4. What do I want to create? Each resource block creates something new, like your server.

#Specify the Source provider
example: source = "hashicorp/aws"
(The HashiCorp AWS provider communicates with the AWS API to create the infrastructure mentioned in our terraform code.)

#POINTS to remember:
versioning --> version = "~> 6.0"
~> is called the pessimistic constraint operator.
It means “allow newer versions, but only up to a point.” Only the last number you write is allowed to go up.

example: version = "~> 6.0"
This allows 6.0, 6.1, 6.5, 6.20 and so on, but not 7.0. In other words, anything from 6.0 up to (but not including) 7.0.

other examples:
version = "6.10.0"    # exactly this version, nothing else
version = ">= 6.0"    # 6.0 or anything newer, including 7, 8...
version = ">= 6.0, < 7.0"   # same meaning as ~> 6.0, just written out


#Automatic Spacing format 
Terraform format's the spacing for you. Run this in the folder: 

example: terraform fmt (or) terraform fmt -recursive
It fixes spacing automatically, for example adding a space in terraform { and lining up the = signs. This is why so much Terraform code you see online looks neatly aligned; people rarely do it by hand.





