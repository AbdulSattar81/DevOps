-- old_file  

++ new_file  
Everything between these @@....@@ is a hunk.

# Git Commands
1. git branch
#To see branches on the remote repository (like GitHub)
git branch -r
#To see both local and remote
git branch -a
#This command is used to delete the branch from local repository
git branch -d branch_name
#To Force delete a branch locally
git branch -D branch_name
#This command is to delete remote branch 
git push origin --delete branch_name

2. git status
3. git add Git/day13.txt (To move to stagging/ to track the changes)

4. git commit -m " Message to display for commit"
#This -a flag is used if the file/folder is already tracked
git commit -am "Commit Message"

5. git push origin branch_name
#if you create a branch locally and want to push that branch to remote(GitHub), use 
git push -u origin branch_name 
-u flag = sets the tracking relationship (i.e., This local branch is linked to this remote branch, so I don’t have to type the remote name every time I push or pull.)

#To check tracking branches
git branch -vv


# Git Revert & Merge
Git 
