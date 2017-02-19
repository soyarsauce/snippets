ADAPTER=${1:-"vboxnet1"}

sudo ifconfig $ADAPTER down
sudo ifconfig $ADAPTER up
