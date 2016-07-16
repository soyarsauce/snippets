#Homesick
gem install homesick
homesick clone soyarsauce/dotfiles
homesick link dotfiles

#Sublime - install package control first
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/dotfiles/home/.sublimetext3/User