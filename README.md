# Dotfiles

My configuration for a fresh ubuntu(or ubuntu based) install

## Steps

### 1. Open the terminal and make sure you are in the home directory

```shell
cd
```

### 2. Install git

```shell
sudo apt install git -y # Enter your password
```

### 3. Clone the repository

```shell
git clone https://github.com/lutaalbert/dotfiles.git
```

### 4. Run the initialization script

Might see a `virtualbox-ext-pack` PUEL license pop-up, press `ESC`, select `YES`
and press `Enter` to accept it.

```shell
bash dotfiles/init.sh # Enter your password when asked (possible multiple times)
```

### 5. Reboot

### 6. Run the post reboot script

```shell
bash dotfiles/post-reboot.sh
```

### 7. Install nvim plugins

#### Coc

1. Open nvim - `v`
2. Install plugins - `:PlugInstall`

#### Lua

### 8. Add the generated ssh key on platforms(github, gitlab etc)

#### Copy the ssh key in clipboard

**Linux**

```shell
xclip -selection clipboard < ~/.ssh/id_ed25519.pub
```

**Wsl**

```shell
cat ~/.ssh/id_ed25519.pub | clip.exe
```

#### Add the ssh key on platforms

- [github](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)

#### Switch dotfiles repo connection from https to ssh

```shell
cd ~/dotfiles && git remote set-url origin git@github.com:lutaalbert/dotfiles.git && git push -u origin master # Type 'yes (Enter)'
```

### 9. Add the generated gpg key on platforms(github, gitlab etc)

#### Find the gpg key id

Look at step 3 [here](https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key).

```shell
gpg --list-secret-keys --keyid-format=long
```

#### Set the git signing key

```shell
git config --global user.signingkey <key-id>
```

#### Copy the gpg key in clipboard

```shell
gpg --armor --export <key-id> | xclip -selection clipboard
```

#### Add the gpg key on platforms

- [github](https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-new-gpg-key-to-your-github-account)
