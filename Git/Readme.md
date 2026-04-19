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
alias gcb='git checkout -b'

# Git Commands

- git branch  (To see branches on the remote repository (like GitHub)  

- git branch -r  (shows only the remote branches available on your repository, shows what branches exists on remote server{GitHub} )  
<!--To see both local and remote  -->

- git branch -vv  (- Shows all your local branches along with their tracking information & latest commit message  
                (- Shows all your local branches along with the remote branch its tracking & latest commit message)  
                
- git branch -a  (This list all branches in your repository both local branches and remote branches)

- git branch -d branch_name  (This command is used to delete the branch from local repository)

- git branch -D branch_name  (To Force delete a branch locally)  

- git push origin --delete branch_name  (This command is to delete remote branch)  
  
# Git Status
- git status

# Git Add
- git add Git/day13.txt (To move to stagging/ to track the changes)  
  
# Git Commit
- git commit -m " Message to display for commit"  
<!--This -a flag is used if the file/folder is already tracked  -->
- git commit -am "Commit Message"  

# Git Switch/Checkout  
- git switch <branch_name>
- git checkout <branch_name>
- git checkout -b <branch_name>  (create's a new branch)  

#Git Push & Git Pull
- git push origin branch_name  
<!--if you create a branch locally and want to push that branch to remote(GitHub), use  -->
- git push -u origin branch_name  
-u flag = sets the tracking relationship (i.e., This local branch is linked to this remote branch, so I don’t have to type the remote name every time I push or pull.)  

- git pull origin <branch_name>   (eg: main, dev, feature)  

# Git Revert, Reset, & Merge
- git revert HEAD~2
- git revert 5924609 (eg: 5924609 is commit_ID)  

- git merge <branch_name>

- git reset --soft 5924609 (git will delete/wipes all the commits above this commit_hash 5924609)
- git reset --hard 5924609 (git with delete all the commits, but maintains the file)
- git reset --mixed 5924609 (git will remove the commits above 5924609, however we can still watch and edit all those changes done in the file)

   
# Git Log
- git log
- git log --oneline
- git log --oneline -n 5

# Git 
