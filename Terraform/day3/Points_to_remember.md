# terraform apply --auto-approve
use this for auto approval instead of giving permission manually.

### Important points to remember  
1. Store State file to remote backend.  
2. Do not Update/Delete the file.  
3. State locking. (Meaning of state locking - Once the terraform state file used by a process, do not use it elsewhere)
4. Isolation of statefile.  
5. Regular backup.


### Things in  Main.tf to remember ###
### Refer day4 main.tf file

''' 
use_lockfile = ture
we need to use use_lockfile otherwise the infrastructure will suffer and I won't having this locking mechanism, which is really important because multiple users will try to update the same infrastructure and the state file will be corrupted. 

Earlier we used to use (lock_table) DynamoDB for this purpose, now it is a built-in functionality within S3 bucket.

'''

