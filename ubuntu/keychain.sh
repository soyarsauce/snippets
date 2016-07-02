# Ubuntu via apt:
apt-get install keychain

# add to .bash_profile
/usr/bin/keychain $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOSTNAME-sh