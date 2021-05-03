# Dotfiles

My configuration for a fresh ubuntu(or ubuntu based) install

## Steps

### 1. Open the terminal and make sure you are in the home directory

`cd`

### 2. Clone the repository

`git clone https://github.com/lutaalbert/dotfiles.git`

### 3. Run the initialization file

`bash dotfiles/init.sh` Enter your password when asked(possible multiple times)

### 4. Install node

For LTS: `nvm install --lts --default && nvm use --lts`

### 5. Install nvim plugins

#### Coc

1. Open nvim - `v`
2. Install plugins - `:PlugInstall`

#### Lua

### 6. Reboot

### 7. Add the generated ssh key on platforms(github, gitlab etc)

Key path: `~/.ssh/id_ed25519.pub`

