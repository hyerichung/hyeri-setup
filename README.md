# Hyeri's setup

<img src="./assets/fzf.png" alt="fzf" style="height: auto; width:50%;"/>
<img src="./assets/lf.png" alt="lf" style="height: auto; width:60%;"/>
<img src="./assets/vim.png" alt="vim" style="height: auto; width:60%;"/>

#### shell

- print all of shell
  - `cat /etc/shells`
- setup zsh as a default shell
  - `chsh -s /bin/zsh`
  - `echo $SHELL` -> `/bin/zsh`

#### homebrew
- https://docs.brew.sh/Installation
- `which brew`
  -   intel: `/usr/local/bin/brew`
  -   m3: `/opt/homebrew/bin/brew`

- path for formulae and casks installed through brew -> `/usr/local/bin` | `/opt/homebrew/bin/brew`
  - e.g. `/usr/local/bin/git`
  - e.g. `Visual studio code`
    - `/Applications/Visual Studio Code.app`
    - `code` command -> `/usr/local/bin`

#### zsh
- [`$HOME/DEV_ROOT/zsh/.zshrc`](/DEV_ROOT/zsh/.zshrc)<br>
- #### plugins
  - `$HOME/DEV_ROOT/zsh/plugins` 
    - [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    - [zsh-autocompletions](https://github.com/marlonrichert/zsh-autocomplete)
    - [zsh-you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use)
  
- #### powerlevel10k
  - `$HOME/DEV_ROOT/zsh/powerlevel10k`
    - https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#manual
  - `p10k configure` -> `lean`

- #### font
  - [Cousine Nerd Font](https://www.nerdfonts.com/font-downloads)
    - download > double-click > add to `Font Book.app` > terminal > `setting` > `Profiles` > change `Font` - `Cousine Nerd Font`

#### lf
- `~/.config/lf`
- `brew install lf` > GUI for file searching
- `brew install fd` > file searching for lf
- `brew install trash` > file deleting for lf
- todo: `ueberzug`, `ffd`, `rgfzf`

#### fzf
- `brew install fzf`
- config > `~/.zshrc`

#### vim
- `~/.vim/colors/onehalfdark.vim`
  - [one half dark](https://github.com/sonph/onehalf/blob/master/vim/colors/onehalfdark.vim)
- [`~/.vimrc`](.vimrc)
- `.vimrc`, `.vim` should always be located on `$HOME`

#### nvm
- https://github.com/nvm-sh/nvm?tab=readme-ov-file#install--update-script
- `nvm install --lts`
- `nvm use --lts`

#### corepack
- `brew install corepack`
- `corepack enable`

#### vscode
- [vscode setup](./.vscode)
- command + shift + p > install `code` command

#### git
- `brew install git`
- [git ssh setup](/about-git-setup.md)

#### RN
 - check compatible xcode version with IOS version [xcode](https://developer.apple.com/documentation/xcode-release-notes/xcode-15_3-release-notes)  
 - [ruby](https://github.com/rbenv/rbenv?tab=readme-ov-file#installation)
   - `which ruby` > `/Users/hyerichung/.rbenv/shims/ruby`
   - `rbenv which ruby` > `/Users/hyerichung/.rbenv/versions/3.3.0/bin/ruby`
   - `rbenv versions` 
   - `rbenv install 3.1.2`
   - `rbenv global 3.1.2`
 - `brew install fastlane`
 - `brew install watchman`
 - `gem install bundler`
 - `sudo gem install cocoapods`

#### ETC
- gitkraken
- [Magnet](https://apps.apple.com/us/app/magnet/id441258766?mt=12)
- [Amphetamine](https://apps.apple.com/kr/app/amphetamine/id937984704?mt=12)
- [refined-github](https://github.com/refined-github/refined-github)

