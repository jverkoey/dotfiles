alias gco="git checkout"
alias gca="git commit -a"
alias gcaa="git commit -a --amend"
alias gstat="git status"
alias gcp="git cherry-pick"
alias grc="git rebase --continue"
alias grs="git rebase --skip"
alias gri="git rebase --interactive"
alias grom="git rebase origin/main"
alias u="cd .."

# Command to create a new branch, commit changes, and push to remote
stage() {
    local branch_name=$1
    if [ -z "$branch_name" ]; then
        echo "Error: Please provide a branch name"
        return 1
    fi
    
    git checkout -b $branch_name
    git commit -a
    git push origin $branch_name -u
}

# Command to switch to main, update it, and delete the specified branch
land() {
    local branch_name=$1
    if [ -z "$branch_name" ]; then
        echo "Error: Please provide a branch name"
        return 1
    fi
    
    git checkout main
    git fetch -p
    git rebase origin/main
    git branch -D $branch_name
}
