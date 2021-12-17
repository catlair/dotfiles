git clone https://github.com/jchook/ranger-zoxide  ~/.config/ranger/plugins/zoxide
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      "$GH_CDN/junegunn/vim-plug/plug.vim"
