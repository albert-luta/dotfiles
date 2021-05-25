[ ! -d $HOME/.local/share/fonts ] && mkdir -p $HOME/.local/share/fonts

# hack
curl -fL https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip --create-dirs -o $download/fonts/hack.zip
unzip $download/fonts/hack.zip  -d $HOME/.local/share/fonts/hack/

# Rebuild the font cache
fc-cache -fv

