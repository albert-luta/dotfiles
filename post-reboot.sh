# Source nvm so it can be used inside a script
. $HOME/.nvm/nvm.sh
# Install node
nvm install --lts --default 
nvm use --lts

# Install npm packages
npm i -g neovim pnpm yarn

# Install pnpm tab completion
pnpm install-completion bash
pnpm install-completion zsh

