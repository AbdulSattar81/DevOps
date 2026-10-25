How to think about starting any Terraform file

Ask yourself four questions in order:

Which tool do I need? The terraform block declares the AWS provider and its version, so Terraform knows what to download.
Where am I deploying? The provider block sets the region.
What existing information do I need to look up? Each data block reads something that already exists, like the latest Ubuntu image.
What do I want to create? Each resource block creates something new, like your server.

#POINTS to remember:

~> is called the pessimistic constraint operator.
It means “allow newer versions, but only up to a point.” Only the last number you write is allowed to go up.

example: version = "~> 6.0"
This allows 6.0, 6.1, 6.5, 6.20 and so on, but not 7.0. In other words, anything from 6.0 up to (but not including) 7.0.

other examples:
version = "6.10.0"    # exactly this version, nothing else
version = ">= 6.0"    # 6.0 or anything newer, including 7, 8...
version = ">= 6.0, < 7.0"   # same meaning as ~> 6.0, just written out

