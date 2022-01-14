sed -i "s/raw\.githubusercontent\.com\/ohmyzsh\/ohmyzsh\/master/cdn\.jsdelivr\.net\/gh\/ohmyzsh\/ohmyzsh/g" ~/.zinit/bin/zinit.zsh
sed -i "s/raw\.githubusercontent\.com\/sorin-ionescu\/prezto\/master/ghproxy\.com\/https:\/\/github\.com\/sorin-ionescu\/prezto/g" ~/.zinit/bin/zinit.zsh
sed -i "s/github\.com\/ohmyzsh\/ohmyzsh\/trunk/cdn\.jsdelivr\.net\/gh\/ohmyzsh\/ohmyzsh/g" ~/.zinit/bin/zinit.zsh
sed -i "s/github\.com\/sorin-ionescu\/prezto\/trunk/cdn\.jsdelivr\.net\/gh\/sorin-ionescu\/prezto/g" ~/.zinit/bin/zinit.zsh
sed -i "s/github\.com/ghproxy\.com\/https:\/\/github\.com/g" ~/.zinit/bin/zinit-install.zsh

# https:\/\/ghproxy\.com\/https:\/\/raw\.githubusercontent\.com\/
