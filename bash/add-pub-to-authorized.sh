cat ~/.ssh/soyarsauce-mbr.pub | ssh user@host.com "cat >> ~/.ssh/authorized_keys"

curl https://github.com/soyarsauce.keys | ssh user@host.com "cat >> ~/.ssh/authorized_keys"

curl https://github.com/soyarsauce.keys | tee -a ~/.ssh/authorized_keys