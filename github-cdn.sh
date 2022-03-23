# sed -i "s/raw\.githubusercontent\.com\/ohmyzsh\/ohmyzsh\/master/ghproxy\.com\/https:\/\/raw\.githubusercontent\.com\/ohmyzsh\/ohmyzsh/g" ~/.zinit/bin/zinit.zsh
# sed -i "s/raw\.githubusercontent\.com\/sorin-ionescu\/prezto\/master/ghproxy\.com\/https:\/\/raw\.githubusercontent\.com\/sorin-ionescu\/prezto/g" ~/.zinit/bin/zinit.zsh
# sed -i "s/github\.com\/ohmyzsh\/ohmyzsh\/trunk/ghproxy\.com\/https:\/\/raw\.githubusercontent\.com\/ohmyzsh\/ohmyzsh/g" ~/.zinit/bin/zinit.zsh
# sed -i "s/github\.com\/sorin-ionescu\/prezto\/trunk/ghproxy\.com\/https:\/\/raw\.githubusercontent\.com\/sorin-ionescu\/prezto/g" ~/.zinit/bin/zinit.zsh

sed -i "s/raw\.githubusercontent\.com\/ohmyzsh\/ohmyzsh/raw\.sevencdn\.com\/ohmyzsh\/ohmyzsh/g" ~/.zinit/bin/zinit.zsh
sed -i "s/github\.com/ghproxy\.com\/https:\/\/github\.com/g" ~/.zinit/bin/zinit-install.zsh

# https:\/\/ghproxy\.com\/https:\/\/raw\.githubusercontent\.com\/
# ghproxy\.com\/https:\/\/raw\.githubusercontent\.com\/
