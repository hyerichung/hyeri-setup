### ssh key git
- when you want to use multiple github account on same local computer. (personal, company account)

1. `ssh-keygen -t ed25519 -C "hyerichungdev@gmail.com"`
2. identify file path  
  `/Users/hyerichung/.ssh/id_rsa_hyerichungdev`  
3. password, password confirm > press enter.
4. `eval "$(ssh-agent -s)"`
5. `touch ~/.ssh/config` 
6. `vim ~/.ssh/config`
7. edit config file

    ```
    # hyerichungdev@gmail.com
    Host github.com-hyerichungdev
        HostName github.com
        AddKeysToAgent yes
        UseKeychain yes
        IdentityFile ~/.ssh/id_rsa_hyerichungdev
        User hyerichungdev
    
    # hyericdev@gmail.com
    Host github.com-hyericdev
        HostName github.com
        AddKeysToAgent yes
        UseKeychain yes
        IdentityFile ~/.ssh/id_rsa_hyericdev
        User hyericdev
    ```
8. `ssh-add -K ~/.ssh/id_rsa_hyerichungdev`<br>
9. Github Settings > SSH key > paste ssh key value from below  
  `pbcopy < ~/.ssh/id_rsa_hyerichungdev.pub`
10. `ssh -T git@github.com-hyerichungdev`  
11. `Hi hyerichung! You've successfully authenticated, but GitHub does not provide shell access.`
  - you might need to check your remote and edit it if you got those message
    - `git remote -v`  
    - `git remote set-url origin git@github.com-hyerichungdev:hyerichung/times.git`  

#### usual  
  - `git config --global user.email hyerichungdev@gmail.com`
  - `git config --global user.name hyerichung`

#### company works
  - `git config user.email hyericdev@gmail.com`
  - `git config user.name hyeric`

#### want to reset?
  - `git config --unset user.name`
  - `git config --unset user.email`

#### check ssh or config
  - `ssh-add -l`
  - `git config -l`
  - `ssh-agent -k` > force the agent to clear

#### git command?
  - `git config —global alias.st status`
  - `git config —global alias.cm commit -m`
  - `git config —global alias.p push`
  - `git config —global alias.ch checkout`
