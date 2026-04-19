-- old_file  
++ new_file  
Everything between these @@....@@ is a hunk.

#Aliases

alias ga='git add'  
alias gb='git branch'  
alias gs='git status'  
alias gsw='git switch'  
alias gc='git commit -m'  
alias gp='git push origin'  
alias gpl='git pull origin'  
alias gm='git merge'  
alias gr='git rebase'  
alias gff='git pull --ff-only origin'  


# Git Commands
1. git branch  (To see branches on the remote repository (like GitHub)  
git branch -r  (shows only the remote branches available on your repository, shows what branches exists on remote server{GitHub} )  
<!--To see both local and remote  -->
git branch -a  (This list all branches in your repository both local branches and remote branches)

git branch -d branch_name  (This command is used to delete the branch from local repository)

git branch -D branch_name  (To Force delete a branch locally)  

git push origin --delete branch_name  (This command is to delete remote branch)  
  
2. git status  
3. git add Git/day13.txt (To move to stagging/ to track the changes)  
  
4. git commit -m " Message to display for commit"  
<!--This -a flag is used if the file/folder is already tracked  -->
git commit -am "Commit Message"  
  
5. git push origin branch_name  
<!--if you create a branch locally and want to push that branch to remote(GitHub), use  -->
git push -u origin branch_name  
-u flag = sets the tracking relationship (i.e., This local branch is linked to this remote branch, so I don’t have to type the remote name every time I push or pull.)  
  
<!--To check tracking branches --> 
git branch -vv  


# Git Revert & Merge
git revert HEAD~2
