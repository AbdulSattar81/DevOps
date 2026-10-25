How to think about starting any Terraform file

Ask yourself four questions in order:

Which tool do I need? The terraform block declares the AWS provider and its version, so Terraform knows what to download.
Where am I deploying? The provider block sets the region.
What existing information do I need to look up? Each data block reads something that already exists, like the latest Ubuntu image.
What do I want to create? Each resource block creates something new, like your server.
