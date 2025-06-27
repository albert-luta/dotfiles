# Dotfiles

## Installation

- Download chezmoi and dotfiles repo and start installing

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --branch chezmoi --apply "albert-luta"
```

- Password prompts you could/will get
    - **Enter passphrase:** enter chezmoi age password
    - **Become password:** enter local MacOS password
    - **Password:** enter local MacOS password

- Restart PC

#### Other:

- the correct work email + ssh auth + ssh sign for git are automatically applied when working under **~/projects/work**
- ssh auth will be remembered after first use
- to remember ssh sign, you have to add it manually to the agent - `ssh-add ~/.ssh/<personal/work>-sign_ed25519`

#### TODO:

- shift + tab when suggesting files/dirs when doing cd is not working
- ctrl + r invert where the input is (from bottom to top)
- give alacritty permissions to manage other apps - system settings -> privacy & security -> app management
- fix: ssh signing keys are not added to ssh-agent when first used
- automate make zsh the default shell (on linux)
- improve README
- automatically switch from https to ssh connection for the git repo (`git remote set-url origin <ssh-url>`)
- disable inverted (natural) mouse scroll on MacOS
